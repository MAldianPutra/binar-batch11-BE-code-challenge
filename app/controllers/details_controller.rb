class DetailsController < ApplicationController
  before_action :current_detail, only: [:show, :edit, :update, :destroy]

  def index
    @details = Detail.all  
  end

  def show

  end

  def new
    @detail = Detail.new
  end

  def create
    detail = Detail.create(detail_params)
    redirect_to details_path(detail)
  end

  def edit

  end

  def update
    @detail.update(detail_params)
    redirect_to details_path(@detail)
  end
  
  def destroy
    @detail.destroy
    redirect_to details_path
  end

  private

  def detail_params
    params.require(:detail).permit(:item_id, :order_id, :price, :quantity)
  end

  def current_detail
    @detail = Detail.find(params[:id])
  end
end
