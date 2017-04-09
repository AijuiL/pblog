from django.template.loader import get_template
from django.http import HttpResponse
from django.shortcuts import redirect
from .models import Post
from django.shortcuts import render
import markdown2
from django.template import Context, loader
from django.http import HttpResponse
import datetime
# Create your views here.

def homepage(request):
    template = get_template('index.html')
    posts = Post.objects.all()
    now = datetime.datetime.now()
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



def archive_index(request):
    '''a basic events listing view'''
    events = Post.objects.filter().order_by('pub_date')
    now = datetime.datetime.now()


    # create a dict with the years and months:events
    event_dict = {}
    for i in range(events[0].pub_date.year, events[len(events) - 1].pub_date.year - 1, -1):
        event_dict[i] = {}
        for month in range(1, 13):
            event_dict[i][month] = []
    for event in events:
        event_dict[event.pub_date.year][event.pub_date.month].append(event)

    # this is necessary for the years to be sorted
    event_sorted_keys = list(reversed(sorted(event_dict.keys())))
    list_events = []
    for key in event_sorted_keys:
        adict = {key: event_dict[key]}
        list_events.append(adict)

    t = loader.get_template('archive.html')
    c = Context({
        'now': now, 'list_events': list_events,
    })
    return HttpResponse(t.render(c))


