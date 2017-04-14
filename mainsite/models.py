#coding=utf-8
from django.db import models
from django.utils import timezone
from django.core.urlresolvers import reverse
from datetime import datetime
# Create your models here.

class Post(models.Model):
    STATUS_CHOICES = (
        ('d', 'Draft'),
        ('p', 'Published'),
    )

    title = models.CharField(max_length=200,verbose_name=u'title(標題)')
    body = models.TextField(verbose_name=u'body(內文)')
    status = models.CharField(max_length=1, choices=STATUS_CHOICES,verbose_name=u'status(文章狀態)')
    pub_date = models.DateTimeField(verbose_name=u'現在時刻')
    category = models.ForeignKey('Category', null=True, on_delete=models.SET_NULL,verbose_name='分類')
    topped = models.BooleanField(default=False,verbose_name='文章置頂')


    class Meta:
        ordering = ('-pub_date',)
        verbose_name = u"貼文"
        verbose_name_plural = u"Post"

    def __unicode__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('post', kwargs={'post_id': self.pk})


class Category(models.Model):
    name = models.CharField(max_length=20,verbose_name='分類名稱')
    pub_time = models.DateTimeField(auto_now_add=True,verbose_name='建立時間')


    class Meta:
        ordering =('-name',)
        verbose_name = u"分類"
        verbose_name_plural = u"Category"

    def __unicode__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('category', kwargs={'cate_id': self.pk})


