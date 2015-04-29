class EventsController < ApplicationController
  def index
    if params['convention_id']
      convention = Convention.find(params['convention_id'])
      render json: convention.events
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
    params.require(:event).permit(:name, :description, :convention_id, :start, :finish)
  end
end
