class CategoryController < ApplicationController
  def index
    @categories = Category.order('id ASC')
  end

  def show
    @category=Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    # Instantiate a new object using form parameters
    @category = Category.new(category_params)

    # Save the object
    if @category.save
      redirect_to(categoryies_path)      # If save succeeds,redirect to index page
    else
      render('new')     # If save fails,redisplay the form so user can fix it
    end
  end

  def edit
    @category=Category.find(params[:id])
  end

  def update
    @category=Category.find(params[:id])
    if @category.update(params[:id])
      redirect_to(category_path(@category))      # If update succeeds,redirect to index page
    else
      render('edit')     # If update fails,redisplay the form so user can fix it
    end
  end

  def delete
    @category=Category.find(params[:id])
  end

  def destroy
    @category=Category.find(params[:id])
    @category.destroy
    redirect_to(categories_path)
  end

  # private
  #   def category_params
  #     params.require(:category).permit(:name,:position,:visible)
  #   end

end
