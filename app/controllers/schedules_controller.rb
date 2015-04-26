class SchedulesController < ApplicationController
  def index
    if params['con_id']
      con = Con.find(params['con_id'])
      render json: con.schedules
    else
      render json: Schedule.all
    end
  end

  def show
    render json: Schedule.find(params[:id])
  end
end
