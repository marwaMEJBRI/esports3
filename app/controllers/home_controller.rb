class HomeController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
    @q = User.ransack(params[:q])
    @users = @q.result
  end
end
