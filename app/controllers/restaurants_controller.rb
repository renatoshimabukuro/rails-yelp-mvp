class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create

  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update
    @restaurant.save
  end

  def new
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

  end

end
