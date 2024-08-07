class UserController < ApplicationController

	def list
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

	def edit
    @user = User.find(params[:id])
  end

	def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

	def delete
		@user=User.find(params[:id])
	end

	def destroy
		@user=User.find(params[:id])
		@user.destroy
		redirect_to@user
	end

  def user_params
    params.require(:books).permit(:name, :phone_number, :email, :username,:password, :location, :profile_picture)
  end

end
