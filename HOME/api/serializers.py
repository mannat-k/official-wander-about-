from django.contrib.auth.models import User
from rest_framework import serializers # Official Documentation here https://www.django-rest-framework.org/api-guide/serializers/
from rest_framework.validators import UniqueTogetherValidator

#Serializing is a mechanism for translating Django Models into other formats. Here we are mapping our user model to JSON
class UserSerializer(serializers.ModelSerializer):

    def create(self, validated_data):
        user = User.objects.create_user(**validated_data)
        return user

    class Meta: #Meta classes instances are classes itself.
        model = User
        fields = (
            'username',
            'first_name',
            'last_name',
            'email',
            'password',
        )
        validators = [
            UniqueTogetherValidator( # This allows us to verify that the combination of username and email is unique
                queryset=User.objects.all(), # Querying all the users
                fields=['username', 'email'] # Will check these two fields 
            )
        ]