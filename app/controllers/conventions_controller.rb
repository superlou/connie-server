class ConventionsController < ApplicationController
  def index
    render json: Convention.all
  end

  def show
    render json: Convention.find(params['id'])
  end
end
