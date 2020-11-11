class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:user_account]

  def home
  end

  def contact_us
  end

  def your_cars

  end
end
