class ShoppingsController < ApplicationController
  
  def new
    @shop = Shopping.new
  end
  
  def create
    @shop = Shopping.new(shopping_params)
    if @shop.save
      flash[:success] = "Item Successfully added"
      redirect_to shoppings_path(@shop)
    else
    render 'new'
    end
  end
  
  def show
    @shop = Shopping.find(params[:id])
  end
  
  def edit
    @shop = Shopping.find(params[:id])
    
  end
  
  def update
    @shop = Shopping.find(params[:id])
    if @shop.update(shopping_params)
      flash[:success] = "Item was sucessfully Updated"
      redirect_to shoppings_path(@shop)
    else
      render 'edit'
    end
  end
  
  def index
    @shop = Shopping.all
  end
  
  def destroy
    @shop = Shopping.find(params[:id])
    @shop.destroy
    flash[:danger] = "Item was Removed"
    redirect_to shoppings_path
  end
  
  
  private
  
  def shopping_params
    params.require(:shopping).permit(:item)
  end
  
end