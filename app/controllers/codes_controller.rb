class CodesController < ApplicationController
  
  def index
    @codes = Code.where(model_id: params[:format]).paginate(:page => params[:page], :per_page => 15).order('created_at ASC')
  end

  def main
  end
  
end
