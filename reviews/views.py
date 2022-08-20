from django.shortcuts import render

from django.shortcuts import get_object_or_404, render

from .models import Bathroom, Review

from .forms import ReviewForm

from django.http import HttpResponseRedirect

from django.urls import reverse

import datetime


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
    form = ReviewForm()
    return render(request, 'reviews/bathroom_detail.html', {'bathroom': bathroom, 'form':form})

def add_review(request, bathroom_id):
    bathroom = get_object_or_404(Bathroom, pk=bathroom_id)
    form = ReviewForm(request.POST)
    if form.is_valid():
        rating = form.cleaned_data['rating']
        comment = form.cleaned_data['comment']
        user_name = form.cleaned_data['user_name']
        review = Review()
        review.bathroom = bathroom
        review.user_name = user_name
        review.rating = rating
        review.comment = comment
        review.pub_date = datetime.datetime.now()
        review.save()
        return HttpResponseRedirect(reverse('reviews:bathroom_detail', args=(bathroom.id,)))

    return render(request, 'reviews/bathroom_detail.html', {'bathroom': bathroom, 'form': form})