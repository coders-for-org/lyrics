from django import forms
from lyrics.models import Lyrics_mod

class Lyrics_form(forms.ModelForm):
    class Meta:
        model = Lyrics_mod
        fields = '__all__'  
