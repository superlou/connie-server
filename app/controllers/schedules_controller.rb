class SchedulesController < ApplicationController
  def index
    if params['convention_id']
      convention = Convention.find(params['convention_id'])
      render json: convention.schedules
    else
      render json: Schedule.all
    end
  end

  def show
    render json: Schedule.find(params[:id])
  end
end
