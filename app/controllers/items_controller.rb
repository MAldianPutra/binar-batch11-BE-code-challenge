class ItemsController < ApplicationController
  before_action :current_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all  
  end

  def show

  end

  def new
    @item = Item.new
  end

  def create
    item = Item.create(item_params)
    redirect_to items_path(item)
  end

  def edit

  end

  def update
    @item.update(item_params)
    redirect_to items_path(@item)
  end

  # def update_quantity
  #   @item
  
  def destroy
    @item.destroy
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:item_name, :item_price, :item_quantity)
  end

  def current_item
    @item = Item.find(params[:id])
  end
end
