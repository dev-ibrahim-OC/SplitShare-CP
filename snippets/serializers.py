from rest_framework import serializers
from snippets.models import usertable 

class usertableSerializer(serializers.ModelSerializer):
    class Meta:
        model = usertable
        fields = ('id','created', 'username', 'password', 'email')