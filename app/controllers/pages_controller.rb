class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:your_cars]
  # before_action :your_cars
  def home
  end

  def contact_us
  end

  def your_cars
    @all_cars = Car.all
  end
end
