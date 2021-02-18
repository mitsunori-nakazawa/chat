class ToppagesController < ApplicationController
  def index
    if logged_in?
      @food = current_user.foods.build  # form_with 用
      @foods = current_user.foods.order(id: :desc).page(params[:page])
    end
  end
end
