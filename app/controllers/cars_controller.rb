class CarsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit_car]
  before_action :car_params, only: [:create, :update]

  def index
    @cars = Car.all
  end

  # displaying a single car based on its id
  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
    @colours = Colour.all
  end

  def create
    @car = Car.new(car_params)
    @car.user_id = current_user.id
    @car.purchased = false
    redirect_to your_cars_path if @car.save
  end

  def edit
    @car = Car.find(params[:id])
  end

  private

  def car_params
    params.require(:car).permit(:make, :model, :year, :kilometres, :price, :has_rego, :purchased, :colour_id)
    
  end


end
