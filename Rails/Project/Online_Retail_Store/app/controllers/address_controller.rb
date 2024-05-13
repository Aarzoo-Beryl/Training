class AddressController < ApplicationController
  def index
    @addresses = Address.order('id ASC')
  end

  def show
    @address=Address.find(params[:id])
  end

  def new
    @address = Address.new
  end

  def create
    # Instantiate a new object using form parameters
    @address = Address.new(address_params)

    # Save the object
    if @address.save
      redirect_to(addresses_path)      # If save succeeds,redirect to index page
    else
      render('new')     # If save fails,redisplay the form so user can fix it
    end
  end

  def edit
    @address=Address.find(params[:id])
  end

  def update
    @address=Address.find(params[:id])
    if @address.update(params[:id])
      redirect_to(address_path(@address))      # If update succeeds,redirect to index page
    else
      render('edit')     # If update fails,redisplay the form so user can fix it
    end
  end

  def delete
    @address=Address.find(params[:id])
  end

  def destroy
    @address=Address.find(params[:id])
    @address.destroy
    redirect_to(addresses_path)
  end

  # private
  #   def address_params
  #     params.require(:address).permit(:name,:position,:visible)
  #   end


end
