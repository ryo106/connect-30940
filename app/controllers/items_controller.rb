class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_item, only: [:edit, :show, :update, :destroy]

  def index
    @items = Item.includes(:user).order('created_at DESC')
  end

  def new
    if current_user.id == 1
      @item = Item.new
    else
      redirect_to items_path
    end
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  def edit
    redirect_to root_path unless @item.user_id == current_user.id 
    
  end

  def update
    if @item.update(item_params)
      redirect_to items_path
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    if @item.user_id == current_user.id 
      # && @item.order.blank?
      @item.destroy
      redirect_to items_path
    else
      render :show
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :title, :text, :category_id, :product_status_id, :shipping_fee_burden_id, :prefecture_id, :delivery_day_id, :price).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
