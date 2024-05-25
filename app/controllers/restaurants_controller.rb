class RestaurantsController < ApplicationController
  # /restaurants
  def index
    @restaurants = Restaurant.all # trae todos los registros de la tabla restaurants
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
    # @restaurant => @id=nil, @name=nil, @address=nil , @phone_rating=nil, @rating=nil
  end

  def create
    
  end
end
