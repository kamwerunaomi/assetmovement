from django.contrib import admin
from django.conf.urls import url
from django.views.static import serve
from django.urls import path, include
from django.conf import settings
from . import views
from django.views.generic.base import TemplateView
from rest_framework_simplejwt.views import TokenObtainPairView,TokenRefreshView
from django.conf.urls.static import static
from django.contrib.auth import views as auth_views

admin.autodiscover()

urlpatterns = [
	path('/', include('django.contrib.auth.urls')),
	#path('', include('Form.urls')),
	url(r'^media/(?P<path>.*)$', serve,{'document_root': settings.MEDIA_ROOT}),
	url(r'^static/(?P<path>.*)$', serve,{'document_root': settings.STATIC_ROOT}),
   	path('', TemplateView.as_view(template_name='dashboard.html'), name='dashboard'),
    path('login/signup.html', views.signup, name='signup'),
    path('login/registration/signup.html', views.signup, name='signup'),
	path('admin', views.all_users, name='admin'),
	#path('admin/delete/admin')
	path("password_reset", views.password_reset_request, name="password_reset"),
	# path("password_reset", views.password_reset_request, name="password_reset"),
	# # path('password_reset/done/', views.password_reset_request, name='password_reset_done'),
	# #path('Form/login/password_reset/password/password_reset/done/', auth_views.PasswordResetDoneView.as_view(template_name='main/password/password_reset_done.html'), name='password_reset_done'),
	# path('password/password_reset/done/', auth_views.PasswordResetDoneView.as_view(template_name='password/password_reset_done.html'), name='password_reset_done'),
 #    path('password/reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(template_name="password/password_reset_confirm.html"), name='password_reset_confirm'),
 #    path('reset/done/', auth_views.PasswordResetCompleteView.as_view(template_name='password/password_reset_complete.html'), name='password_reset_complete'),  
 #    path('Form/login/password_reset/', views.password_reset_request, name='password_reset'),    
	path('/', views.form_view, name='loginview'),
	path('formview/',views.form_view, name='formview'),
	path('password_reset/', views.password_reset_request, name='password_reset'),
	path('records/upload/', views.upload, name='upload'),
	path('records/showdata/<int:id>/', views.showdata, name='viewdata'),
	path('documents', views.documents,name='documents'),
	path('dashboard.html',views.form_view,name='dashboard'),
	path('dashboard.html',views.form_view,name='dashboard'),
	#path('records/showdata/<int:id>/record', views.records, 'record'),
	#path('view_data', views.viewdata, name='viewdata'),
	path('admin/registration/signup.html', views.signup, name='signup'),
	path('signup', views.signup, name='signup'),
	path('edit/<int:id>', views.edit, name='edit'),
	path('delete/<int:id>', views.delete, name='delete'),
	path('api/token/', TokenObtainPairView.as_view()),
	path('api/token/refresh', TokenRefreshView.as_view()),
	#path('login/login/upload.html', views.upload, name='upload'),
	path('records/', views.records, name='records'),
	#path('records/records/', views.records, name='records'),
	path('showname',views.showname,name='showname'),
	path('update/<int:id>', views.update, name='update'),
	path('edit/update/<int:id>', views.update)
	
]
if settings.DEBUG:
	urlpatterns+=static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
else:
	urlpatterns+=static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
