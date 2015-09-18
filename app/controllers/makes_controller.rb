class MakesController < ApplicationController
  #before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :check_user, only: [:edit, :update, :destroy]
  before_action :find_models, only: [:show, :edit]

  def index
    if user_signed_in?
      @makes = Make.all
    end
    # color scheme for make view
    @color = { "Konica Minolta" => "DarkGoldenRod", "Kyocera" => "Crimson", 
               "Panasonic" => "#008080", "Canon" => "Red",
               "Sharp" => "Sienna", "HP" => "RoyalBlue", 
               "Ricoh" => "DarkOrange", "KIP" => "#0073e5"
             }                
  end

  def show
  end

  def welcome

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

    # Color scheme for models view
     @model_color = { 1 => "DarkGoldenRod", 2 => "Crimson", 3 => "#008080",
                      4 => "Red", 5 => "Sienna", 6 => "RoyalBlue", 
                      7 => "DarkOrange", 8 => "#0073e5" }
  end

end
