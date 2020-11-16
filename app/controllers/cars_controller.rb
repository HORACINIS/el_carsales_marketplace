class CarsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit_car]
  before_action :car_params, only: [:create, :update]

  def index
    @cars = Car.all
  end

  # displaying a single car based on its id
  def show
    @car = Car.find(params[:id])
    if user_signed_in?
      # ----------STRIPE ---------
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        customer_email: current_user.email,
        line_items: [ 
          {
            name: @car.make,
            description: @car.model,
            images: ['https://thumbs.dreamstime.com/z/writing-note-showing-need-loanquestion-business-concept-offering-money-demonstratingal-finances-photo-showcasing-157951074.jpg'],
            # images: [@car.picture],
            amount: (@car.price * 100),
            currency: 'aud',
            quantity: 1
          } 
        ],
          payment_intent_data: {
            metadata: {
            car_id: @car.id,
            user_name: current_user.name
            }
          },
        success_url: "#{root_url}payments/success?carId=#{@car.id}",
        cancel_url: "#{root_url}cars"
      )
      @session_id = session.id
    end
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
    params.require(:car).permit(:make, :model, :year, :kilometres, :price, :has_rego, :purchased, :colour_id, :picture)
  end

end
