class FoodsController < ApplicationController
  
  before_action :find_food, only: [:show, :update, :destroy, :edit]

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
  end

  private
  
  def find_food
    @food = Food.find(params[:id])
  end

end
