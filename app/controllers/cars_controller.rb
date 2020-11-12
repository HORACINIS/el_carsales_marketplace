class CarsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit_car]

  def index
    @cars = Car.all
  end

  # displaying a single car based on its id
  def show
    @cars = Car.find(params[:id])
  end

  def new
    @cars = Car.new
  end

  def edit_car
    @cars = Car.find(params[:id])
  end


end
