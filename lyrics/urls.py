from django.urls import path, include
from lyrics.models import Lyrics_mod
from lyrics.forms import Lyrics_form
from . import views

urlpatterns = [
    path('lyrics-admin/', views.lyrics_dashboard),
    path('lyrics-insert/', views.lyrics_insert),
    path('lyrics-show/', views.lyrics_show),
    path('lyrics-edit/<int:id>', views.lyrics_edit),
    path('lyrics-del/<int:id>', views.lyrics_delete),
    path('lyrics-update/<int:id>', views.lyrics_update),
    path('lyrics-view/<int:id>', views.lyrics_view),
]


