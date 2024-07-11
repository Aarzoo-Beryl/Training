class CustomerController < ApplicationController
  def index
    @customers = Customer.order('id ASC')
  end

  def show
    @customer=Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create
    # Instantiate a new object using form parameters
    @customer = Customer.new(customer_params)

    # Save the object
    if @customer.save
      redirect_to(customers_path)      # If save succeeds,redirect to index page
    else
      render('new')     # If save fails,redisplay the form so user can fix it
    end
  end

  def edit
    @customer=Customer.find(params[:id])
  end

  def update
    @customer=Customer.find(params[:id])
    if @customer.update(params[:id])
      redirect_to(customer_path(@customer))      # If update succeeds,redirect to index page
    else
      render('edit')     # If update fails,redisplay the form so user can fix it
    end
  end

  # def delete
  #   @customer=Customer.find(params[:id])
  # end
	#
  # def destroy
  #   @customer=Customer.find(params[:id])
  #   @customer.destroy
  #   redirect_to(customers_path)
  # end

  # private
  #   def customer_params
  #     params.require(:customer).permit(:name,:position,:visible)
  #   end

end
