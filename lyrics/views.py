from django.shortcuts import render, redirect
from django.http import HttpResponse
from lyrics.models import Lyrics_mod, Lyrics_admin_mod
from lyrics.forms import Lyrics_form

# for giving permission to access directory
from django.core.files.storage import FileSystemStorage

# login check
from django.contrib.auth.decorators import login_required

# for flash messages
from django.contrib import messages

# checking login required
def myuser_login_required(f):
    def wrap(request, *args, **kwargs):
        #this check the session if userid key exist, if not it will redirect to login page
        if 'session_uname' not in request.session.keys():
            return redirect('/tunetheworld/')
        return f(request, *args, **kwargs)
    wrap.__doc__=f.__doc__
    wrap.__name__=f.__name__
    return wrap


def login_admin(request):
    import hashlib
    data_site = request.POST.dict()
    uname = data_site.get("add_em")
    adpass = data_site.get("add_pass")
    try:
        data_db = Lyrics_admin_mod.objects.get(ad_uname=uname)
        # print(data_db.ad_pass)
        result_pass = hashlib.md5(adpass.encode())
        check = result_pass.hexdigest()

        if data_db.ad_uname == uname and data_db.ad_pass == check:
            print ("Data Matched Welcome !!!")
            request.session['session_uname'] = data_db.ad_uname+"_ly_sess"
            messages.success(request, "Successfuly Submitted")
            return redirect('/lyrics-show')
        else:
            messages.error(request, 'Sorry Your Username or Password Not Matched !!')
            # print ("Sorry Credentials Not Matched ####")
            return redirect('/tunetheworld')
    except:
        messages.error(request, 'Sorry Your Username or Password Not Matched !!')
        pass
    return render(request, 'admin/login.html')

# logging out
@myuser_login_required
def logout(request):
    try:
        del request.session['session_uname']
    except:
        pass
        messages.warning(request, 'You Logged Out Successfully !!')
    return redirect('/tunetheworld/')

@myuser_login_required
def lyrics_dashboard(request):
    return render(request, 'dbsd.html')    

@myuser_login_required
def lyrics_insert(request):
    if request.method == 'POST':
        ly_data = request.POST.dict()
        # print("-----------1------------------")
        # print(request.POST.dict())
        # print(request.FILES.dict())
        form = Lyrics_form(request.POST, request.FILES)
        if form.is_valid():
            try:
                form.save()
                # print("-----------2------------------")
                return redirect('/lyrics-show/')
            except:
                return render(request, 'insert.html', {'msg' : 'Error in Data Validation'})
    else:
        # print("-----------1A------------------")
        form = Lyrics_form()
    return render(request, 'insert.html', {'form': form , 'msg' : 'Please Fill the Form'})

@myuser_login_required
def lyrics_show(request):
    all_data = Lyrics_mod.objects.all().order_by('-id')
    return render(request, 'show.html', {'lyrics': all_data})        

@myuser_login_required
def lyrics_edit(request, id):
    data = Lyrics_mod.objects.get(id=id)
    return render(request, "edit.html", {'lyric': data}) 

@myuser_login_required
def lyrics_update(request, id):
    lyr = Lyrics_mod.objects.get(id=id)
    form = Lyrics_form(request.POST, request.FILES, instance = lyr)
    if form.is_valid():
        form.save()
        return redirect('/lyrics-show')
    return render(request, "edit.html", {'lyric': lyr})

@myuser_login_required
def lyrics_delete(request, id):
    vehi = Lyrics_mod.objects.get(id=id)
    vehi.delete()
    return redirect("/lyrics-show/")

@myuser_login_required
def lyrics_view(request, id):
    lyr = Lyrics_mod.objects.get(id=id)
    return render(request, 'view.html', {'lyrics': lyr}) 

@myuser_login_required
def lyrics_is_live(request):
    data_live = request.POST.dict()
    is_live_value = data_live.get("is_live")
    is_live_id = data_live.get("id")
    # print(is_live_id+"---------------------Live---------------------------"+is_live_value)
    try:
        lyccc = Lyrics_mod.objects.filter(id=is_live_id).update(is_live=is_live_value)
        # print("-----------Done----------------"+lyccc)
        return redirect('/lyrics-show/')
    except Exception as e:
        print(e)
    return redirect("/")