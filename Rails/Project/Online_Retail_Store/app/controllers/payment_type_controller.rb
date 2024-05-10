class PaymentTypeController < ApplicationController
  def index
    @payment_types = PaymentType.order('id ASC')
  end

  def show
    @payment_type=PaymentType.find(params[:id])
  end

  def new
    @payment_type = PaymentType.new
  end

  def create
    # Instantiate a new object using form parameters
    @payment_type = payment_type.new(payment_type_params)

    # Save the object
    if @payment_type.save
      redirect_to(payment_types_path)      # If save succeeds,redirect to index page
    else
      render('new')     # If save fails,redisplay the form so user can fix it
    end
  end

  def edit
    @payment_type=PaymentType.find(params[:id])
  end

  def update
    @payment_type=PaymentType.find(params[:id])
    if @payment_type.update(params[:id])
      redirect_to(payment_type_path(@payment_type))      # If update succeeds,redirect to index page
    else
      render('edit')     # If update fails,redisplay the form so user can fix it
    end
  end

  def delete
    @payment_type=PaymentType.find(params[:id])
  end

  def destroy
    @payment_type=PaymentType.find(params[:id])
    @payment_type.destroy
    redirect_to(payment_types_path)
  end

  # private
  #   def payment_type_params
  #     params.require(:payment_type).permit(:name,:position,:visible)
  #   end

end
