class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:your_cars]

  def home
  end

  def contact_us
  end

  def your_cars

  end
end
