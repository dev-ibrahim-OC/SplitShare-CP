from django.contrib import admin
from snippets.models import usertable
from snippets.models import AppGroup
from snippets.models import Trans
# Register your models here.


admin.site.register(usertable)
admin.site.register(AppGroup)
admin.site.register(Trans)