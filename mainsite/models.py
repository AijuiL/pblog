#coding=utf-8
from django.db import models
from django.utils import timezone
from django.core.urlresolvers import reverse
from datetime import datetime
# Create your models here.

class Post(models.Model):
    title = models.CharField(max_length=200,verbose_name=u'title(標題)')
    body = models.TextField(verbose_name=u'body(內文)')
    pub_date = models.DateTimeField(default=timezone.now,verbose_name=u'現在時刻')


    class Meta:
        ordering = ('-pub_date',)
        verbose_name = u"貼文"
        verbose_name_plural = u"Post"

    def __unicode__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('detail', kwargs={'pk': self.pk})
