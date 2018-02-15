class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @places = Place.search_by_name_and_address(params[:query])
    else
      @places = Place.all
    end

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
      redirect_to my_places_places_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @place.update(place_params)
    redirect_to place_path
  end

  def my_places # lista as budegas do dono dessas budegas
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
