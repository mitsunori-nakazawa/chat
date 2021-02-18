class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    food = food.find(params[:food_id])
    current_user.favorite(food)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    food = food.find(params[:food_id])
    current_user.unfavorite(food)
    flash[:danger] = 'お気に入りを解除しました。'
    redirect_back(fallback_location: root_path)
  end
end