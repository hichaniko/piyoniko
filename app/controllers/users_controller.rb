class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @items = current_user.items
    @areas = current_user.areas
  end
end
