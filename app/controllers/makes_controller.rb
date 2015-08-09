class MakesController < ApplicationController

  def index
    @makes = Make.all
  end

  def show
    @models = Model.all.where(make_id: params[:format])
  end
end
