class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit update destroy]

  # /restaurants
  def index
    @restaurants = Restaurant.all # trae todos los registros de la tabla restaurants
  end

  # /restaurants/:id
  def show; end

  # /restaurants/new
  def new
    @restaurant = Restaurant.new
    # @restaurant => @id=nil, @name=nil, @address=nil , @phone_rating=nil, @rating=nil
  end

  # /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  #/restaurants/:id/edit
  def edit;  end

  #/restaurants/:id
  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurants_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
