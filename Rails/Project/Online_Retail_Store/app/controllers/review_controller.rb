class ReviewController < ApplicationController
  def index
    @reviews = Review.order('id ASC')
  end

  def show
    @review=Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    # Instantiate a new object using form parameters
    @review = Review.new(review_params)

    # Save the object
    if @review.save
      redirect_to(reviews_path)      # If save succeeds,redirect to index page
    else
      render('new')     # If save fails,redisplay the form so user can fix it
    end
  end

  def edit
    @review=Review.find(params[:id])
  end

  def update
    @review=Review.find(params[:id])
    if @review.update(params[:id])
      redirect_to(review_path(@review))      # If update succeeds,redirect to index page
    else
      render('edit')     # If update fails,redisplay the form so user can fix it
    end
  end

  def delete
    @review=Review.find(params[:id])
  end

  def destroy
    @review=Review.find(params[:id])
    @review.destroy
    redirect_to(reviews_path)
  end

  # private
  #   def review_params
  #     params.require(:review).permit(:name,:position,:visible)
  #   end

end
