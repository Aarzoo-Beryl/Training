class SellerController < ApplicationController
  def index
    @selleres = Seller.order('id ASC')
  end

  def show
    @seller=Seller.find(params[:id])
  end

  def new
    @seller = Seller.new
  end

  def create
    # Instantiate a new object using form parameters
    @seller = Seller.new(seller_params)

    # Save the object
    if @seller.save
      redirect_to(selleres_path)      # If save succeeds,redirect to index page
    else
      render('new')     # If save fails,redisplay the form so user can fix it
    end
  end

  def edit
    @seller=Seller.find(params[:id])
  end

  def update
    @seller=Seller.find(params[:id])
    if @seller.update(params[:id])
      redirect_to(seller_path(@seller))      # If update succeeds,redirect to index page
    else
      render('edit')     # If update fails,redisplay the form so user can fix it
    end
  end

  def delete
    @seller=Seller.find(params[:id])
  end

  def destroy
    @seller=Seller.find(params[:id])
    @seller.destroy
    redirect_to(sellers_path)
  end

  # private
  #   def seller_params
  #     params.require(:seller).permit(:name,:position,:visible)
  #   end

end
