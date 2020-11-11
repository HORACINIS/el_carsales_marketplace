class CarsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cars = Car.all
  end

  def show
    @cars = Car.find(params[:id])
  end

  def new

  end
end
