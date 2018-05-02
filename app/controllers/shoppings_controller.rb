class ShoppingsController < ApplicationController
  
  def new
    @shop = Shopping.new
  end
  
  def create
    @shop = Shopping.new(shopping_params)
    if @shop.save
    redirect_to shopping_path(@shop)
    else
    render 'new'
    end
  end
  
  def show
    @shop = Shopping.find(params[:id])
  end
  
  
  private
  
  def shopping_params
    params.require(:shopping).permit(:item)
  end
  
end