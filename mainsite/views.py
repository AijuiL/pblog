from django.template.loader import get_template
from django.http import HttpResponse, Http404
from django.shortcuts import redirect
from .models import Post, Category
from django.shortcuts import render
import markdown2
from django.template import Context, loader
from django.http import HttpResponse
import datetime
# Create your views here.
from django.views.generic.detail import DetailView
from django.views.generic.list import ListView
from django.utils import timezone


def homepage(request):
    template = get_template('index.html')
    posts = Post.objects.all()
    now = datetime.datetime.now()
    html = template.render(locals())

    return  HttpResponse(html)

class ArticleDetailView(DetailView):
    model = Post
    template_name = "post.html"
    pk_url_kwarg = 'post_id'

    def get_queryset(self):
        post_list = Post.objects.filter(status='p')
        for post in post_list:
            post.body = markdown2.markdown(post.body,)
        return post_list

    def get_context_data(self, **kwargs):
        return super(ArticleDetailView, self).get_context_data(**kwargs)

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


class CategoryListView(ListView):

    model = Category
    template_name = "categorylist.html"
    pk_url_kwarg = 'cate_id'

    def get_context_data(self, **kwargs):
        # Call the base implementation first to get a context
        context = super(CategoryListView, self).get_context_data(**kwargs)
        # Add in a QuerySet of all the books
        context['category_list'] = Category.objects.all().order_by('name')
        return context

def category(request, cate_id):

    # Create a context dictionary which we can pass to the template rendering engine.
    context_dict = {}

    try:
        # Can we find a category name slug with the given name?
        # If we can't, the .get() method raises a DoesNotExist exception.
        # So the .get() method returns one model instance or raises an exception.
        category = Category.objects.get(id=cate_id)
        context_dict['category_name'] = category.name

        # Retrieve all of the associated pages.
        # Note that filter returns >= 1 model instance.
        posts = Post.objects.filter(category=category)

        # Adds our results list to the template context under name pages.
        context_dict['posts'] = posts
        # We also add the category object from the database to the context dictionary.
        # We'll use this in the template to verify that the category exists.
        context_dict['category'] = category
    except Category.DoesNotExist:
        # We get here if we didn't find the specified category.
        # Don't do anything - the template displays the "no category" message for us.
        pass

    # Go render the response and return it to the client.
    return render(request, 'category.html', context_dict)