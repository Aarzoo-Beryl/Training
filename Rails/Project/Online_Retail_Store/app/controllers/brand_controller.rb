class BrandController < ApplicationController
  def index
    @brands = Brand.order('id ASC')
  end

  def show
    @brand=Brand.find(params[:id])
  end

  def new
    @brand = Brand.new
  end

  def create
    # Instantiate a new object using form parameters
    @brand = Brand.new(brand_params)

    # Save the object
    if @brand.save
      redirect_to(brands_path)      # If save succeeds,redirect to index page
    else
      render('new')     # If save fails,redisplay the form so user can fix it
    end
  end

  def edit
    @brand=Brand.find(params[:id])
  end

  def update
    @brand=Brand.find(params[:id])
    if @brand.update(params[:id])
      redirect_to(brand_path(@brand))      # If update succeeds,redirect to index page
    else
      render('edit')     # If update fails,redisplay the form so user can fix it
    end
  end

  def delete
    @brand=Brand.find(params[:id])
  end

  def destroy
    @brand=Brand.find(params[:id])
    @brand.destroy
    redirect_to(brands_path)
  end

  # private
  #   def brand_params
  #     params.require(:brand).permit(:name,:position,:visible)
  #   end

end
