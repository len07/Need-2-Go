from django.shortcuts import render

from django.shortcuts import get_object_or_404, render

from .models import Bathroom, Review


def review_list(request):
    latest_review_list = Review.objects.order_by('-pub_date')[:9]
    context = {'latest_review_list':latest_review_list}
    return render(request, 'reviews/review_list.html', context)


def review_detail(request, review_id):
    review = get_object_or_404(Review, pk=review_id)
    return render(request, 'reviews/review_detail.html', {'review': review})


def bathroom_list(request):
    bathroom_list = Bathroom.objects.order_by('-name')
    context = {'bathroom_list':bathroom_list}
    return render(request, 'reviews/bathroom_list.html', context)


def bathroom_detail(request, bathroom_id):
    bathroom = get_object_or_404(Bathroom, pk=bathroom_id)
    return render(request, 'reviews/bathroom_detail.html', {'bathroom': bathroom})
