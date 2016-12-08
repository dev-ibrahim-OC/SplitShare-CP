from rest_framework import serializers
from snippets.models import usertable
from snippets.models import Snippet

class usertableSerializer(serializers.ModelSerializer):
    class Meta:
        model = usertable
        fields = ('id','created', 'username', 'password', 'email')
        
class SnippetSerializer(serializers.ModelSerializer):
    class Meta:
        model = Snippet
        fields = ('id', 'title', 'code', 'linenos', 'language', 'style')