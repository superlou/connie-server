class PlacesController < ApplicationController
  def index
    if params['con_id']
      con = Con.find(params['con_id'])
      render json: con.places
    else
      render json: Place.all
    end
  end
end
