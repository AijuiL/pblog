from django.contrib import admin
from .models import Post, Category,Tag

# Register your models here.


class PostAdmin(admin.ModelAdmin):
    list_display =  ('title', 'pub_date')

class Categoryadmin(Category):
    list_display = ('name')

class Tagadmin(Tag):
    list_display = ('title')

admin.site.register(Post, PostAdmin)
admin.site.register(Category)
admin.site.register(Tag)