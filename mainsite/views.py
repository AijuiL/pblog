#coding=utf-8
from django.template.loader import get_template
from django.http import HttpResponse, Http404
from django.shortcuts import redirect
from .models import Post, Category, Tag
from django.shortcuts import render
from django.template import Context, loader
from django.http import HttpResponse
import datetime
from django.views.generic.detail import DetailView
from django.views.generic.list import ListView
from templatetags.tag_cloud import TagCloud
# Create your views here.


class homepage(ListView):
    template_name = "index.html"
    context_object_name = "posts"

    def get_queryset(self):
        posts = Post.objects.filter(status='p')
        return posts

    def get_context_data(self, **kwargs):
        return super(homepage, self).get_context_data(**kwargs)


class ArticleDetailView(DetailView):
    model = Post
    template_name = "post.html"
    pk_url_kwarg = 'post_id'

    def get_queryset(self):
        post_list = Post.objects.filter(status='p')
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


def events_index(request):
    '''a basic events listing view'''
    events = Post.objects.filter(status='p').order_by('-pub_date')
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
        posts = Post.objects.filter(category=category,status='p')


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




class TagListView(ListView):
    template_name = 'tag_list.html'
    context_object_name = 'tag_list'
    model = Tag
    pk_url_kwarg = 'tag_id'


    def get_context_data(self, **kwargs):
        context = super(TagListView, self).get_context_data(**kwargs)
        context['tag_list'] = Tag.objects.all().order_by('-title')
        tag_list = context.get("tag_list")

        for tag in tag_list:
            post_count = Post.objects.filter(tag=tag,status='p').count()
            tag.post_count = post_count

        max_count = min_count = 0
        if len(tag_list) > 0:
            max_count = max(tag_list, key=lambda tag: tag.post_count).post_count
            min_count = min(tag_list, key=lambda tag: tag.post_count).post_count

        tag_cloud = TagCloud(min_count, max_count)

        for tag in tag_list:
            tag_font_size = tag_cloud.get_tag_font_size(tag.post_count)
            color = tag_cloud.get_tag_color(tag.post_count)
            tag.color = color
            tag.font_size = tag_font_size

        return context

def tag(request, tag_id):

    # Create a context dictionary which we can pass to the template rendering engine.
    context_dict = {}

    try:
        # Can we find a category name slug with the given name?
        # If we can't, the .get() method raises a DoesNotExist exception.
        # So the .get() method returns one model instance or raises an exception.
        tag = Tag.objects.get(id=tag_id)
        context_dict['tag_title'] = tag.title

        # Retrieve all of the associated pages.
        # Note that filter returns >= 1 model instance.
        posts = Post.objects.filter(tag=tag,status='p')


        # Adds our results list to the template context under name pages.
        context_dict['posts'] = posts
        # We also add the category object from the database to the context dictionary.
        # We'll use this in the template to verify that the category exists.
        context_dict['tag'] = tag
    except Tag.DoesNotExist:
        # We get here if we didn't find the specified category.
        # Don't do anything - the template displays the "no category" message for us.
        pass
    # Go render the response and return it to the client.
    return render(request, 'tag.html', context_dict)
