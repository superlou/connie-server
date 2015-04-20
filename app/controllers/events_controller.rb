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

  def create
    event = Event.create!(event_params)
    render json: event
  end

  def update
    event = Event.find(params[:id])
    event.update_attributes(event_params)
    render json: event
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    render json: {}, status: 200
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :con_id, :start, :finish)
  end
end
