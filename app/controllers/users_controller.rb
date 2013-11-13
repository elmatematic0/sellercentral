class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def index

  end

  def show


  end

  def create
    @user = User.new(user_parameters)
    @user.save
    if @user.save
      flash.notice = "Welcome, #{@user.name}! You Are Signed In."
      redirect_to products_path

    else
      render 'new'
    end
  end

  private
  def user_parameters
    params.require(:user).permit(:name, :email, :password)
  end
end
