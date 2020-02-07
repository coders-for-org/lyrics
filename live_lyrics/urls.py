from django.urls import path, include
from . import views

urlpatterns = [
    path('', views.index), 
    path('live-list/', views.live_list),
    path('live-view/<int:id>', views.live_view),
]




