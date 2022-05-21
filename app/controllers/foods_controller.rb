class FoodsController < ApplicationController
  # skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_auth
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
    @food = Food.create(food_params)
    if @food.valid?
      redirect_to @food
    else
      flash.now[:alert] = @food.errors.full_messages.join('<br>').html_safe
      render 'new'
    end
  end

  def update
    begin
      @food.update!(food_params)
      redirect_to @food
    rescue
      flash.now[:alert] = @food.errors.full_messages.join('<br>').html_safe
      render 'edit'
    end
  end

  def destroy
    @food.image.purge
    @food.destroy
    redirect_to foods_path
  end

  private

  def check_auth
    authorize Food
  end
  
  def find_food
    @food = Food.find(params[:id])
  end

  def find_restaurant
    @restaurants = Restaurant.order(:get_name)
  end

  def food_params
    return params.require(:food).permit(:name, :description, :price, :restaurant_id, :image)
  end

end
