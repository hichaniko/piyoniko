class ItemsController < ApplicationController

  def index
    @items = Item.all
    @areas = Area.all
  end

  def new
    @item = Item.new
  end

  def create  #保存
    Item.create(item_params)
    redirect_to '/'
  end

  def  destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  def edit  #編集
    @item = Item.find(params[:id])
  end

  def update  #更新
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to root_path
  end

  def show   #詳細
    @item = Item.find(params[:id])
    @comment = Comment.new
    @comments = @item.comments.includes(:user)
  end


  private


  def item_params
    params.require(:item).permit(:text, :image).merge(user_id: current_user.id)
  end

end
