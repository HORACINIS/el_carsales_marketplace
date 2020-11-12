class CarsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit_car, :car_params]
  # before_action :car_params

  def index
    @cars = Car.all
  end

  # displaying a single car based on its id
  def show
    @cars = Car.find(params[:id])
  end

  def create
    @cars = Car.new
    @current_user = current_user
    # @cars_create = Car.create(car_params)
    # redirect_to cars_create_path
  end

  def edit_car
    @cars = Car.find(params[:id])
  end

  # def car_params
  #   params.require(:car).permit(:make, :model, :year, :kilometres, :price, :colour_id, :has_rego, :purchased, :user_id)
  # end


end
