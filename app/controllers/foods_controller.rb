class FoodsController < ApplicationController
  # skip_before_action :verify_authenticity_token
  before_action :find_food, only: [:show, :update, :destroy, :edit]
  before_action :find_restaurant, only: [:new, :edit, :create, :update]

  def index
    @foods = Food.all
  end
  
  def show
  end

  def edit
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.create!(food_params)
    @food.save
    redirect_to @food
  end

  private
  
  def find_food
    @food = Food.find(params[:id])
  end

  def find_restaurant
    @restaurants = Restaurant.order(:get_name)
  end

  def food_params
    return params.require(:food).permit(:name, :description, :price)
  end

end
