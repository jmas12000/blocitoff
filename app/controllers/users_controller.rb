class UsersController < ApplicationController
  def show
    @user = current_user
    @items = @user.items if user_signed_in?
    @item = Item.new
  end
end 