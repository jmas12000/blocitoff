class ItemsController < ApplicationController
  
  def new
    @item = Item.new
  end
    
  def create
    item = current_user.items.new(item_params)
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
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:notice] = "Item deleted successfully"
    else
      flash[:alert] = "Item couldn't be deleted successfully. Please try again."
    end
   
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  private
  
  def item_params
    params.require(:item).permit(:body)
  end
end
