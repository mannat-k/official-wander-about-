from django.shortcuts import render

# Create your views here.
from .serializers import UserSerializer #Importing the UserSerializer  class
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status 
from rest_framework.permissions import IsAdminUser
from django.contrib.auth.models import User


class UserRecordView(APIView):
    """
    API View to create or get a list of all the registered
    users. GET request returns the registered users whereas
    a POST request allows to create a new user.
    """
    permission_classes = [IsAdminUser] #Sets the permisson of the current user

    def get(self, format=None): # Creating the get method, returns the list of all registered user 
        users = User.objects.all() # Storing all the users in this variable here
        serializer = UserSerializer(users, many=True) 
        return Response(serializer.data) #

    def post(self, request): # Creating the post method, used to create new users for our application
        serializer = UserSerializer(data=request.data)
        if serializer.is_valid(raise_exception=ValueError):
            serializer.create(validated_data=request.data)
            return Response(
                serializer.data,
                status=status.HTTP_201_CREATED
            )
        return Response(
            {
                "error": True,
                "error_msg": serializer.error_messages,
            },
            status=status.HTTP_400_BAD_REQUEST
        )