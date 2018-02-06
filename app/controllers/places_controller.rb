class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  def index
    @places = Place.where.not(latitude: nil, longitude: nil)

    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.user = current_user
    if @place.save
      redirect_to place_path(@place)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @place.update(place_params)
  end

  def my_places
    @my_places = Place.where(user: current_user)
  end

  def show
    @markers = [{ lat: @place.latitude, lng: @place.longitude }]
  end

  def destroy
    @place.destroy
    redirect_to my_places_places_path
  end

  private

  def place_params
    params.require(:place).permit(:address, :place_name, :photo)
  end

  def set_place
    @place = Place.find(params[:id])
  end
end
