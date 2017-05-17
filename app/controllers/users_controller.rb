class UsersController < ApplicationController
 # before_action :authenticate_user!
  def new
    @user = User.new
  end
  
  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    @user.send_reset_password_instructions
    if @user.save
      flash[:notice] = "Welcome to Bloccit #{@user.name}!"
      create_session(@user)
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error creating your account. Please try again."
      render :new
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit_password
    @user = current_user
  end

  def update_password
    @user = User.find(current_user.id)
    if @user.update(user_params)
     #sign_in @user, :bypass => true 
      # Sign in the user by passing validation in case their password changed
      bypass_sign_in(@user)
     redirect_to root_path
    else
      
      render "edit_password"
    end
  end

  private

  def user_params
    # NOTE: Using `strong_parameters` gem
    params.require(:user).permit(:password, :password_confirmation, :current_password)
  end
end