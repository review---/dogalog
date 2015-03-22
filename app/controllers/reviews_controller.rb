class ReviewsController < ApplicationController

  before_action :set_review, only: [:show]

  def index
    @reviews = Review.in_public.includes(:user, :movie).all
  end

  def show
  end

  private

  def set_review
    @review = Review.in_public.find(params[:id])
  end
end
