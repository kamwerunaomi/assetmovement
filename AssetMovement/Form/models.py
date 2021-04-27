from django.db import models
from django.db import connections
from django import forms
from django.forms import ModelForm
from django.contrib.auth.models import User
from django.utils.timezone import now
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import AbstractUser

# class Users(AbstractUser):
# 	pass
class Form(models.Model):

	asset_name=models.CharField(max_length=100)
	asset_sn=models.CharField(max_length=10, default='00')
	place_from=models.CharField(max_length=100)
	place_to=models.CharField(max_length=100)
	receivers_name=models.CharField(max_length=100)
	receivers_id=models.CharField(max_length=10)
	reason=models.TextField()
	confirmed_by=models.CharField(max_length=100)
	form_user=models.CharField(max_length=100)
	date=models.DateField(auto_now_add=True)
	time=models.TimeField(auto_now_add=True)

	def __str__(self):
		return self.asset_name + self.asset_sn
	class Meta: 
		db_table="form_form"

class Document(models.Model):
    description = models.CharField(max_length=255, blank=True)
    document = models.FileField(upload_to='documents/')
    uploaded_at = models.DateTimeField(auto_now_add=True)
    document_user_id_id=models.CharField(max_length=100, null=True)
    document_form=models.ForeignKey(Form, on_delete=models.SET_NULL,to_field='id',null = True)



	



