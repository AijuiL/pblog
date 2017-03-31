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


def about(requests):
    html = '''
<!DOCTYPE html>
<html>
<head><title>About Myself</title></head>
<body>
<h2>Jia Liu</h2>
<hr>
<p>
Hi,I am Jia Liu. This my first blog
</p>
</body>
</html>
'''
    return HttpResponse(html)