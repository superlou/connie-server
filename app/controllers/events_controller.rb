class EventsController < ApplicationController
  def index
    if params['con_id']
      con = Con.find(params['con_id'])
      render json: con.events
    else
      render json: Event.all
    end
  end

  def show
    render json: Event.find(params[:id])
  end
end
