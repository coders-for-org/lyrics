from django.shortcuts import render, redirect
from django.http import HttpResponse
from lyrics.models import Lyrics_mod
from lyrics.forms import Lyrics_form




def lyrics_dashboard(request):
    return render(request, 'dbsd.html')    

def lyrics_insert(request):
    if request.method == 'GET':
        form = Lyrics_form(request.GET)
        if form.is_valid():
            try:
                form.save()
                return redirect('/lyrics-show/')
            except:
                pass
    else:
        form = Lyrics_form()
    return render(request, 'insert.html', {'form': form})


def lyrics_show(request):
    all_data = Lyrics_mod.objects.all().order_by('-id')
    return render(request, 'show.html', {'lyrics': all_data})        

def lyrics_edit(request, id):
    data = Lyrics_mod.objects.get(id=id)
    return render(request, "edit.html", {'lyric': data})


def lyrics_update(request, id):
    lyr = Lyrics_mod.objects.get(id=id)
    form = Lyrics_form(request.GET, instance = lyr)
    if form.is_valid():
        form.save()
        return redirect('/lyrics-show')
    return render(request, "edit.html", {'lyric': lyr})

def lyrics_delete(request, id):
    vehi = Lyrics_mod.objects.get(id=id)
    vehi.delete()
    return redirect("/lyrics-show/")

def lyrics_view(request, id):
    lyr = Lyrics_mod.objects.get(id=id)
    return render(request, 'view.html', {'lyrics': lyr}) 