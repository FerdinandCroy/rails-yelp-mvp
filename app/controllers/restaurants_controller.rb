class RestaurantsController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(resto_strong_params)
    redirect_to restaurant_path(@restaurant)
  end

  def resto_strong_params
    params.require(:restaurant).permit(:name, :address, :stars)
  end
end
