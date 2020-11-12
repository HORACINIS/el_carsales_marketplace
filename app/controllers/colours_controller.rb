class ColoursController < ApplicationController
  def index
    @colours = Colour.all
  end
end
