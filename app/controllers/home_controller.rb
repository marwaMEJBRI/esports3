class HomeController < ApplicationController
  #before_action :authenticate_user!, except: :index  
  before_action :authenticate_user!, :except => [:index, :document, :contact]
  #before_action :authenticate_user!, except: :document
  #before_action :authenticate_user!, except: :contact
  def index
    @q = User.ransack(params[:q])
    @users = @q.result
  end
  
end
