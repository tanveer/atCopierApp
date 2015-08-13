class MakesController < ApplicationController
  #before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :check_user, only: [:edit, :update, :destroy]

  def index
    @makes = Make.all
    @users = User.where(id: current_user)
  end

  def show
    @models = Model.all.where(make_id: params[:format]).paginate(:page => params[:page], :per_page => 8)
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

end
