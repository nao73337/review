class ReviewsController < ApplicationController
    def show
      @review = Review.find(params[:id])
    end

    def index
      @reviews = Review.all
    end

    def new
      @review = Review.new
    end
        
    def create
    @review = Review.new(review_params)
    @review.save
    redirect_to @review
    end

    def edit
      @review = Review.find(params[:id])
    end

    def update
      @review = Review.find(params[:id])
      @review.update(review_params)
      redirect_to @review
    end

    def destroy
      @review = Review.find(params[:id])
      @review.destroy
      redirect_to reviews_path
    end

    private

    def review_params
      params.require(:review).permit(:zoom_url, :range, :deadline, :room)
    end
end
