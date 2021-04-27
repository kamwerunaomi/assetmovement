from django.shortcuts import render,redirect
from django.http import HttpResponse,HttpRequest
from .models import Form,Document
from django.contrib.auth import logout
from .forms import *
from django.contrib.auth import authenticate, login
from django.contrib.auth.forms import PasswordResetForm,UserCreationForm
from django.contrib.auth.models import User
from django.template.loader import render_to_string
from django.db.models.query_utils import Q
from django.utils.http import urlsafe_base64_encode
from django.contrib.auth.tokens import default_token_generator
from django.utils.encoding import force_bytes
from django.core.mail import send_mail, BadHeaderError
from django.contrib import messages  
from django.views.generic import View
from reportlab.pdfgen import canvas
import io
from django.contrib.auth.decorators import login_required
from django.contrib.auth.forms import AuthenticationForm
from django.http import FileResponse
from .utils import render_to_pdf
from django.template.loader import get_template
from django.core.files.storage import FileSystemStorage
from django.contrib.auth import get_user_model
User = get_user_model()
@login_required
def login_view(request):
	if request.method == "POST":
		username = request.POST.get("username")
		password = request.POST.get("password")
		user = authenticate(request,username=username, password=password)
		login(request,user)
		if user is not None:
			return redirect("dashboard")
		else:
			return redirect("loginview")

	return render(request, "login.html")
def index(request):
    return render(request,'accounts/dashboard.html')
# def form_view(request):
	
# 	posts = Form.objects.all()
# 	if request.method=='POST':
# 		form = editForm(request.POST, request.FILES)
# 		if form.is_valid():
# 			form.save()
# 			return redirect('dashboard')
# 	else:
# 		form = editForm()
# 	args = {
# 		'form':form
# 	}

# 	return render(request, "dashboard.html", args)
def form_view(request):
	if request.method=="POST":
		asset_name=request.POST['asset_name']
		asset_sn=request.POST['asset_sn']
		place_from=request.POST['place_from']
		place_to=request.POST['place_to']
		receivers_name=request.POST['receivers_name']
		receivers_id=request.POST['receivers_id']
		reason=request.POST['reason']
		confirmed_by=request.POST['confirmed_by']
		form_user=request.POST['form_user']

		ins=Form(asset_name=asset_name, asset_sn=asset_sn,place_from=place_from,place_to=place_to,receivers_name=receivers_name,receivers_id=receivers_id,reason=reason,confirmed_by=confirmed_by, form_user=form_user)
		ins.save()
		return redirect('records')
	return render(request, "dashboard.html")
# def form_view(request):
# 	form=editForm(request.POST)
# 	if form.is_valid():
# 		Form=form.save(commit=False)
# 		Form.user=request.user
# 		Form.save()
# 	return render(request, "dashboard.html")


def password_reset_request(request):
	if request.method == "POST":
		password_reset_form = PasswordResetForm(request.POST)
		if password_reset_form.is_valid():
			data = password_reset_form.cleaned_data['email']
			associated_users = User.objects.filter(Q(email=data))
			if associated_users.exists():
				for user in associated_users:
					subject = "Password Reset Requested"
					email_template_name = "password/password_reset_email.txt"
					c = {
					"email":user.email,
					'domain':'197.248.35.44',
					'site_name': 'Website',
					"uid": urlsafe_base64_encode(force_bytes(user.pk)),
					"user": user,
					'token': default_token_generator.make_token(user),
					'protocol': 'http',
					}
					email = render_to_string(email_template_name, c)
					try:
						send_mail(subject, email, 'assetmvt@gmail.com' , [user.email], fail_silently=False)
					except BadHeaderError:
						return HttpResponse('Invalid header found.')
					return redirect ("/password/password_reset/done/")
	password_reset_form = PasswordResetForm()
	return render(request=request, template_name="password/password_reset.html", context={"password_reset_form":password_reset_form})

# 
def showdata(request,id):
	resultsdisplay=Form.objects.get(id=id)
	return render(request, 'view_data.html', {'Form':resultsdisplay})


def dashboard(request):
	try:
		the_id=request.session['form_id']
	except:
		the_id=None
	if the_id:
		if request.method == "POST":
			dashboard = dashboard(request.POST)
	else:
		empty_message='You have not filled anything yet'
	return render(request, 'dashboard.html')


# def viewdata(request):
# 	try:
# 		the_id=request.session['form_id']
# 	except:
# 		new_form=Form()
# 		new_form.save()
# 		request.session['form_id'] = new_form.id 
# 		the_id=new_form.id
# 	if request.method == "POST":
# 		viewdata = viewdata(request.POST)
# 	return render(request, 'view_data.html')

def signup(request):
    if request.method == 'POST':
        form = SignUpForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            raw_password = form.cleaned_data.get('password1')
            user = authenticate(username=username, password=raw_password)
            login(request, user)
            return redirect('registration/signup.html')
    else:
        form = SignUpForm()
    return render(request, 'registration/signup.html', {'form': form})

# def admin(request):
# 	return render(request, 'admin.html')

def upload(request):
	try:
		the_id=request.session['form_id']
        
	except:
		new_form=Form()
		new_form.save()
		request.session['form_id']=new_form.id
		the_id=new_form.id
	if request.method == 'POST':

	
		form = DocumentForm(request.POST, request.FILES)
		if form.is_valid():

			existing_form = Form.objects.get(pk=request.POST["document_form"])
			#document_user_id=request.POST['document_user']
			user_id=request.user.id
			# is_private = request.POST.get('is_private', False);
			# existing_user = User.objects.get(pk=request.POST["document_user_id"])
			
			instance=form.save(commit=False)
			instance.document_form = existing_form
			instance.document_user_id=user_id
			instance.save()
			return redirect('/')
	else:
		form = DocumentForm()
		form.document_form = request.GET["form_id"]

		# form.document_user_id = request.GET["user_id"]

	return render(request, 'upload.html', {'form': form})

def records(request):
	# documents=Document.objects.all()
	records=Form.objects.all()
	context={
			# 'documents':documents,
			'Form':records,
	}
	return render(request, 'records.html', context)

def all_users(request):
	users=User.objects.all()
	context={
			'users':users,
	}
	return render(request, 'admin.html', context)

def edit(request,id):  
	users = User.objects.get(id=id)  

	context={
		'User':users,
		}
	return render(request,'edit.html', context) 

def update(request,id):
	users = User.objects.get(id=id)
	form=updateForm(request.POST, instance=users)
	if form.is_valid():
		form.save()

	return render(request,'edit.html', {'User': users})

def active(request, id):
	users = User.objects.get(id=id)
	form=activeForm(request.POST,instance=users)
	if form.is_valid():
		form.save()
	return render(request, 'admin.html',{'User':users})

def delete(request,id):  
	users = User.objects.get(id=id)  
	users.delete()
	
	return redirect("/admin")

def documents(request):
	document=Document.objects.all()
	
	return render(request, 'documents.html', {'document':document})

	


def showname(request):
	username=request.session['form_username']
	print(username)


def logout(request):
   try:
      del request.session['username']
   except:
      pass
   return HttpResponse("<strong>You are logged out.</strong>")
