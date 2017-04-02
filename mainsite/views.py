from django.template.loader import get_template
from django.http import HttpResponse
from django.shortcuts import redirect
from datetime import  datetime
from .models import Post


# Create your views here.

def homepage(request):
    template = get_template('index.html')
    posts = Post.objects.all()
    now = datetime.now()
    html = template.render(locals())

    return  HttpResponse(html)

def showpost(request, slug):
    template = get_template('post.html')
    try:
        post = Post.objects.get(slug=slug)
        if Post != None:
            html = template.render(locals())
            return HttpResponse(html)
    except:
        return  redirect('/')

def about(request):
    template = get_template('about.html')
    html = template.render()

    return HttpResponse(html)