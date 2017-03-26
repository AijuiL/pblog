#coding=utf-8
from django.db import models
from django.utils import timezone
# Create your models here.

class Post(models.Model):
    title = models.CharField(max_length=200,verbose_name=u'title(標題)')
    slug = models.CharField(max_length=200,verbose_name=u'slug(網址)')
    body = models.TextField(verbose_name=u'body(內文)')
    pub_date = models.DateTimeField(default=timezone.now,verbose_name=u'現在時刻')


    class Meta:
        ordering = ('-pub_date',)
        verbose_name = u"貼文"
        verbose_name_plural = u"Post"

    def __unicode__(self):
        return self.title


class NewTable(models.Model):
    bigint_f = models.BigIntegerField(verbose_name=u"64位元之大整數")
    bool_f   = models.BooleanField(verbose_name=u'布林值')
    date_f   = models.DateField(auto_now=True,verbose_name=u'日期格式')
    char_f   = models.CharField(max_length=20, unique=True,verbose_name=u'儲存資料字串Char')
    datetime_f=models.DateTimeField(auto_now_add=True,verbose_name=u'資料時間格式')
    decimal_f= models.DecimalField(max_digits=10, decimal_places=2,verbose_name=u'定點小數數值資料')
    float_f  = models.FloatField(null=True,verbose_name=u"浮點數")
    int_f    = models.IntegerField(default=2010,verbose_name=u'整數欄位')
    text_f   = models.TextField(null=True,verbose_name=u'用在HTML表單')

    class Meta:
        verbose_name = u"新標題"
        verbose_name_plural = u"NewTable"

class Product(models.Model):
    SIZES= (
        ('S', 'Small'),
        ('M', 'Medium'),
        ('L', 'Large') ,
    )

    sku   = models.CharField(max_length=10)
    name  = models.CharField(max_length=20)
    price = models.PositiveIntegerField()
    size  = models.CharField(max_length=1, choices=SIZES)
    qty   = models.BigIntegerField(null=True)


    def __unicode__(self):
        return self.name


