class CarsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @cars = Car.all
  end

  def show
    @cars = Car.find(params[:id])
  end

  def create
    new_car =  Car.create(params[:id])
    @cars = new_car
    pp new_car

    redirect_to cars_path
  end
end
