class RestaurantsController < ApplicationController



 def index
  @restaurants = Restaurant.page(params[:page]).per(9)
  @categories = Category.all
  end

def show
  @restaurants = Restaurant.find(params[:id])

end






end
