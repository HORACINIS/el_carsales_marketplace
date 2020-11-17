class PaymentsController < ApplicationController
	def success
		@car = Car.find(params["carId"].to_i)
		@car.purchased = true
		@car.user_id = current_user.id
		@car.save!
	end
end
