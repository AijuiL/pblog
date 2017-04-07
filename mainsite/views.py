from django.template.loader import get_template
from django.http import HttpResponse
from django.shortcuts import redirect
from datetime import  datetime
from .models import Post
from django.shortcuts import render
from django.views.generic.list import ListView
import markdown2

# Create your views here.

def homepage(request):
    template = get_template('index.html')
    posts = Post.objects.all()
    now = datetime.now()
    html = template.render(locals())

    return  HttpResponse(html)

def showpost(request,pk):
    template = get_template('post.html')
    try:
        post = Post.objects.get(pk=pk)
        if Post != None:
            html = template.render(locals())
            return HttpResponse(html)
    except:
        return  redirect('/')

def about(request):
    template = get_template('about.html')
    html = template.render()

    return HttpResponse(html)

def contact(request):
    template = get_template('contact.html')
    html = template.render()

    return HttpResponse(html)


def archive(request):
    template = get_template('archive.html')
    html = template.render()


    dates = Post.objects.datetimes('pub_date', 'month', order='DESC')
    return render(request,'archive.html',{'dates':dates})
    return HttpResponse(html)

