class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:your_cars]
  before_action :your_cars

  def home
  end

  def contact_us
  end

  def your_cars
    all_cars = Car.all
    @for_sale = []
    @purchased = []
    
    all_cars.each do |car|
      if user_signed_in?
        if car.user_id == current_user.id
            if  car.purchased
              @purchased << [car.make, car.model, car.year, car.price, car.purchased, car.id, car.picture]
            end
            @for_sale << [car.make, car.model, car.year, car.price, car.purchased, car.id, car.picture]
        end
      end
    end

  end
end
