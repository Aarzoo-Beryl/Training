class PaymentController < ApplicationController
  def index
    @payments = Payment.order('id ASC')
  end

  def show
    @payment=Payment.find(params[:id])
  end

  def new
    @payment = Payment.new
  end

  def create
    # Instantiate a new object using form parameters
    @payment = Payment.new(payment_params)

    # Save the object
    if @payment.save
      redirect_to(payments_path)      # If save succeeds,redirect to index page
    else
      render('new')     # If save fails,redisplay the form so user can fix it
    end
  end

  def edit
    @payment=Payment.find(params[:id])
  end

  def update
    @payment=Payment.find(params[:id])
    if @payment.update(params[:id])
      redirect_to(payment_path(@payment))      # If update succeeds,redirect to index page
    else
      render('edit')     # If update fails,redisplay the form so user can fix it
    end
  end

  def delete
    @payment=Payment.find(params[:id])
  end

  def destroy
    @payment=Payment.find(params[:id])
    @payment.destroy
    redirect_to(payments_path)
  end

  # private
  #   def payment_params
  #     params.require(:payment).permit(:name,:position,:visible)
  #   end

end
