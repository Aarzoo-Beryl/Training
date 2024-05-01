class UsersController < ApplicationController

  def index
    @users = User.order('id ASC')
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
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
    if @user.update(user_params) && params[:user][:accept] == '1'
      redirect_to(user_path(@user))
    else
      puts @user.errors.full_messages
      render 'edit'
    end
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    if params[:user][:accept] == '1'
      @user.destroy
      redirect_to(users_path)
    else
      render 'delete'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:email,:gender,:phone_number,:address, :accept)
  end
end
