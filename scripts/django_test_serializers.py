
#Introducing Django REST framework
#Now that we've got some idea what we're building, let's actually get it going. We'll be using Django REST Framework (http://www.django-rest-framework.org/). Start by installing it in your environment:


from rest_framework import serializers


from .models import Album

class AlbumSerializer(
        serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Album