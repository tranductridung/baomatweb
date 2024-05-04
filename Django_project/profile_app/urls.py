from django.urls import path
from . import views

app_name = 'profile_app'
urlpatterns = [
    path('<str:username>/', views.profile, name = 'profile'),
    path('<str:username>/updateInfo/', views.updateInfo, name = 'updateInfo'),
]
 