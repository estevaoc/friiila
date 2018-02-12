class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :stablish]

  def home
    if user_signed_in?
      redirect_to places_path
    end
  end

  def stablish
  end

end
