from django.urls import path
from . import views

app_name = 'account_app'
urlpatterns = [
    path('login/', views.login_user, name = 'login_user'),
    path('logout/', views.logout_user, name = 'logout_user'),
    path('register/', views.register_user, name = 'register_user'),
    path('change_password/', views.change_password, name = 'change_password'),
]
