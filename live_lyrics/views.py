from django.shortcuts import render, redirect
from django.http import HttpResponse
from lyrics.models import Lyrics_mod
from lyrics.forms import Lyrics_form

def index(request):
    return render(request, 'index.html')        

def live_list(request):
    all_data = Lyrics_mod.objects.all().order_by('-id')
    return render(request, 'live_list.html', {'lyrics': all_data})

def live_view(request, id):
    lyr = Lyrics_mod.objects.get(id=id)
    return render(request, 'live_view.html', {'lyrics': lyr}) 