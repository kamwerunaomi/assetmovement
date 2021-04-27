"""AssetMovement URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.conf.urls import url
from django.contrib.auth import views as auth_views
from Form import views

urlpatterns = [
    path('admin/', views.all_users, name='admin'),

    path('', include('Form.urls')),
    path('/', include('django.contrib.auth.urls')),
    path('password/password_reset/done/', auth_views.PasswordResetDoneView.as_view(template_name='password/password_reset_done.html'), name='password_reset_done'),
    path('reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(template_name="password/password_reset_confirm.html"), name='password_reset_confirm'),
    path('reset/done/', auth_views.PasswordResetCompleteView.as_view(template_name='password/password_reset_complete.html'), name='password_reset_complete'),      
    path('djangoadmin/', admin.site.urls),
    #url(r'^admin/', (admin.site.urls)),

    # path('Form/login/reset_password/', auth_views.PasswordResetView.as_view(), name='reset_password'),
    # path('Form/login/password_reset/done/', auth_views.PasswordResetDoneView.as_view(template_name='password/password_reset_done.html'), name='password_reset_done'),
    # path('Form/login/reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(template_name='password/password_reset_confirm.html'), name='password_reset_confirm'),
    # path('Form/login/reset/done/', auth_views.PasswordResetCompleteView.as_view(template_name='password/password_reset_complete.html'), name='password_reset_complete'),
    #path('password_reset/', views.password_reset_request, name='password_reset'),    
    # path('password_reset/', auth_views.PasswordResetCompleteView.as_view(template_name='password/password_reset.html'), name='password_reset'),
    # path('Form/password_change/', name='password_change'),
    # path('Form/password_change/done/', name='password_change_done'),
    # path('Form/password_reset/', name='password_reset'),
    # path('Form/password_reset/done/', name='password_reset_done'),
    # path('Form/reset/<uidb64>/<token>/', name='password_reset_confirm'),
    # path('Form/reset/done/', name='password_reset_complete'),
    #path('change-password/', auth_views.PasswordChangeView.as_view()),
]
