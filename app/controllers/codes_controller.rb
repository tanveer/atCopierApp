class CodesController < ApplicationController
  
  def index
    @codes = Code.where(model_id: params[:format])
  end

  def show
  end
end
