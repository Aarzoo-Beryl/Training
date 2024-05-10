class OrderController < ApplicationController
  def index
    @orders = Order.order('id ASC')
  end

  def show
    @order=Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    # Instantiate a new object using form parameters
    @order = Order.new(order_params)

    # Save the object
    if @order.save
      redirect_to(orders_path)      # If save succeeds,redirect to index page
    else
      render('new')     # If save fails,redisplay the form so user can fix it
    end
  end

  def edit
    @order=Order.find(params[:id])
  end

  def update
    @order=Order.find(params[:id])
    if @order.update(params[:id])
      redirect_to(order_path(@order))      # If update succeeds,redirect to index page
    else
      render('edit')     # If update fails,redisplay the form so user can fix it
    end
  end

  def delete
    @order=Order.find(params[:id])
  end

  def destroy
    @order=Order.find(params[:id])
    @order.destroy
    redirect_to(orders_path)
  end

  # private
  #   def order_params
  #     params.require(:order).permit(:name,:position,:visible)
  #   end

end
