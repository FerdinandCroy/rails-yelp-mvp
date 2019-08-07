class ReviewsController < ApplicationController
  def new
    @restaurants = Restaurant.find(params[:restaurant_id])
    @reviews = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
