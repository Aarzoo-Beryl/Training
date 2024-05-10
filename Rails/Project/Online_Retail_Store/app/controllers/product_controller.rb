class ProductController < ApplicationController
  def index
    @products = Product.order('id ASC')
  end

  def show
    @product=Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    # Instantiate a new object using form parameters
    @product = Product.new(product_params)

    # Save the object
    if @product.save
      redirect_to(products_path)      # If save succeeds,redirect to index page
    else
      render('new')     # If save fails,redisplay the form so user can fix it
    end
  end

  def edit
    @product=Product.find(params[:id])
  end

  def update
    @product=Product.find(params[:id])
    if @product.update(params[:id])
      redirect_to(product_path(@product))      # If update succeeds,redirect to index page
    else
      render('edit')     # If update fails,redisplay the form so user can fix it
    end
  end

  def delete
    @product=Product.find(params[:id])
  end

  def destroy
    @product=Product.find(params[:id])
    @product.destroy
    redirect_to(products_path)
  end

  # private
  #   def product_params
  #     params.require(:product).permit(:name,:position,:visible)
  #   end

end
