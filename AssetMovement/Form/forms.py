from django import forms
from .models import Form 
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from .models import Document


class DocumentForm(forms.ModelForm):
    class Meta:
        model = Document
        fields = ('description', 'document', )

class PostForm(forms.ModelForm):
    class Meta:
        model = Form
        fields = "__all__"

class LoginForm(UserCreationForm):
	class Meta:
		model = User
		fields = ["username","password"]
	
class UploadForm(forms.ModelForm):
	class Meta:
		pass



# class Form(forms.Form):
#     PLACES= [
#     ('Nabo', 'Nabo'),
#     ('Tier Data', 'Tier Data'),
#     ('Zohari', 'Zohari'),
#     ('Vipingo', 'Vipingo'),
#     ]


#     asset_name = forms.CharField(max_length = 50)
#     asset_sn = forms.CharField(max_length = 50)
#     place_from= forms.CharField(label='Where from?', widget=forms.Select(choices=PLACES))
#     place_to= forms.CharField(label='Where to?', widget=forms.Select(choices=PLACES))
#     person_name = forms.CharField(max_length = 50)
#     person_id = forms.CharField(max_length = 150)
#     reason = forms.CharField(widget = forms.Textarea, max_length = 2000)
#     class Meta:
#         model = Form
#         fields = "__all__"

class editForm(forms.ModelForm):
	class Meta:
		model = Form
		fields = "__all__"

class updateForm(forms.ModelForm):
    class Meta:
        model = User
        fields=('first_name', 'last_name', 'email')

class activeForm(forms.ModelForm):
    class Meta:
        model = User
        fields=('first_name','is_active',)

class SignUpForm(UserCreationForm):
    first_name = forms.CharField(max_length=30, required=False, help_text='Optional.')
    last_name = forms.CharField(max_length=30, required=False, help_text='Optional.')
    email = forms.EmailField(max_length=254, help_text='Required. Inform a valid email address.')
    is_superuser = forms.BooleanField(required=False,
                                      initial=False,
                                      label='Admin')

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email', 'password1', 'password2', )
    
