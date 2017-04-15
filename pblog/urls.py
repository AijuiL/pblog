"""mblog URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import include, url
from django.contrib import admin
from mainsite.views import about, contact, events_index, category
from mainsite import views

urlpatterns = [
    url(r'^$',views.homepage.as_view(), name='index'),
    url(r'^post/(?P<post_id>[-\w]+)/$', views.ArticleDetailView.as_view(), name='post'),
    url(r'^category/$', views.CategoryListView.as_view(), name='categoryList'),
    url(r'^category/(?P<cate_id>[\w\-]+)/$', views.category, name='category'),
    url(r"^tags$", views.TagListView.as_view(), name="tag_list"),
    url(r'^tags/(?P<tag_id>[\w\-]+)/$', views.tag, name='tag'),
    url(r'^admin/', include(admin.site.urls)),
    url(r'^about/',about),
    url(r'^contact/',contact),
    url(r'^archive/',views.events_index, name='events_index'),

]
