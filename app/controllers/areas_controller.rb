class AreasController < ApplicationController

  def index
    # @areas = Area.all
  end

  def new
    @area = Area.new
  end

  def create
    Area.create(area_params)
    redirect_to '/'
  end

  def  destroy
    @area = Area.find(params[:id])
    @area.destroy
    redirect_to items_path # あとでareaに変更
  end

  def edit
    @area = Area.find(params[:id])
  end

  def update  #更新
    area = Area.find(params[:id])
    area.update(area_params)
    redirect_to root_path   #pathはあとで確認して
  end

  def show
    @area = Area.find(params[:id])
  end

  private
  
  def area_params
    params.require(:area).permit(:area_text, :prefecture_id, :image).merge(user_id: current_user.id)
  end
end
