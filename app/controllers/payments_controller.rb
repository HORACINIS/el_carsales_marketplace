
def show
	@car = Car.all
	session = Stripe::Checkout::Session.create(
		payment_method_types: ['card'],
		customer_email: current_user.email,
		line_items: [ 
            {
			name: @car.make,
			description: @car.model,
			images: [@car.picture],
			amount: @car.price,
			currency: 'aud',
			quantity: 1,
		    } 
        ],
		payment_intent_data: {
			metadata: {
				car_id: @car.id
				user_name: current_user.name
			}
		},
		success_url: "#{root url}payments/success?carId=#{@car.id}"
		cancel_url: "#{root url}cars"
	)
	@session_id = session.id
end

def success

end
