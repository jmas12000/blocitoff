class ItemsController < ApplicationController
  def new
    @item = Item.new
  end
    
  def create
    @user = User.find(params[:user_id])
    item = @user.items.new(item_params)
    item.user = current_user
      
    if item.save
      flash[:notice] = "Item saved successfully."
    redirect_to root_path
    else
      flash[:alert] = "Item failed to save."
      redirect_to root_path
    end
  end
  
  def destroy
    @user = User.find(params[:user_id])
    item = @user.items.find(params[:id])
    if item.destroy
      flash[:notice] = "Item was deleted."
      redirect_to root_path
    else
      flash[:alert] = "Item couldn't be deleted. Try again."
      redirect_to root_path
    end
  end
  
  private
  def item_params
    params.require(:item).permit(:body)
  end
end
