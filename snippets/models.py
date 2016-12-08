from django.db import models
from pygments.lexers import get_all_lexers
from pygments.styles import get_all_styles

LEXERS = [item for item in get_all_lexers() if item[1]]
LANGUAGE_CHOICES = sorted([(item[1][0], item[0]) for item in LEXERS])
STYLE_CHOICES = sorted((item, item) for item in get_all_styles())

class usertable(models.Model):
    created = models.DateTimeField(auto_now_add=True)
    username = models.CharField(max_length=250, blank=False)
    password = models.CharField(max_length=100, blank=True)
    email =  models.CharField(max_length=250, blank=False)
    class Meta:
        ordering = ('created',)
    
class AppGroup(models.Model):
    created = models.DateTimeField(auto_now_add=True)
    groupcreateId=models.IntegerField(default=0, blank=True, null=True)
    groupuserId= models.IntegerField(default=0, blank=True, null=True)
    groupName=models.CharField(max_length=250, blank=True)
    class Meta:
        ordering = ('created',)
class Trans(models.Model):
    created = models.DateTimeField(auto_now_add=True)
    groupId = models.IntegerField(default=0, blank=True, null=True)
    tansName = models.CharField(max_length=250, blank=True)
    transuserId = models.IntegerField(default=0, blank=True, null=True)
    transamount = models.CharField(max_length=250, blank=True)
    class Meta:
        ordering = ('created',)