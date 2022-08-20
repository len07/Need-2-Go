
from rest_framework import serializers
from .models import Bathroom, Review

class BathroomSerializer(serializers.ModelSerializer): 
    class Meta:
        model =  Bathroom
        fields = '__all__'

class ReviewSerializer(serializers.ModelSerializer): 
    class Meta:
        model = Review
        fields = '__all__'
