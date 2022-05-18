class RestaurantsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]
  before_action :find_food, only: [:show, :edit, :update, :destroy]
  
  def home
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @foods.each do |food|
      @food = food
      return "#{@food.name}"
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(rest_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  def edit
  end

  def update
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end
  
  private
  
  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def find_food
    @foods = Restaurant.find(params[:id]).foods.all
  end

  def rest_params
    return params.require(:restaurant).permit(:name, :cuisine)
  end

end
