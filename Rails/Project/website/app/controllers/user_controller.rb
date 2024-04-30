class UserController < ApplicationController
  def index
    @users = User.order("id ASC")
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    if @user.save
      redirect_to(users_path)
    else
      render('new')
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.save
      redirect_to(users_path)
    else
      render('edit')
    end
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private
  def user_params
  end
end
