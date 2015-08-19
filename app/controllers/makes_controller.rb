class MakesController < ApplicationController
  #before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :check_user, only: [:edit, :update, :destroy]
  before_action :find_models, only: [:show, :edit]

  def index
    if user_signed_in?
      @makes = Make.all
    else
      redirect_to codes_main_path
    end
  end

  def show
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def check_user
    if current_user != @user.user
        redirect_to root_url, alert: "Sorry, this post belongs to someone else"
    end
  end

  def find_models
    @models = Model.all.where(make_id: params[:format]).paginate(:page => params[:page], :per_page => 8)
  end

end
