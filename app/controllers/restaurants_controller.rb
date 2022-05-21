class RestaurantsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_auth
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
    if @restaurant.valid?
      redirect_to @restaurant
    else
      flash.now[:alert] = @restaurant.errors.full_messages.join('<br>').html_safe
      render 'new'
    end
  end

  def edit
  end

  def update
    begin
      @restaurant.update!(rest_params)
      redirect_to @restaurant
    rescue
      flash.now[:alert] = @restaurant.errors.full_messages.join('<br>').html_safe
      render 'edit'
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end
  
  private

  def check_auth
    authorize Restaurant
  end
  
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
