class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def pagination

  end

  #
  # def index
  # @places = places.order("name").page(params[:page])
  # end
  #
end
