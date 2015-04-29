class PlacesController < ApplicationController
  def index
    if params['convention_id']
      convention = Convention.find(params['convention_id'])
      render json: convention.places
    else
      render json: Place.all
    end
  end

  def show
    render json: Place.find(params[:id])
  end
end
