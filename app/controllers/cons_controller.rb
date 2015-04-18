class ConsController < ApplicationController
  def index
    render json: Con.all
  end
end
