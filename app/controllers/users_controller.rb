class UsersController < ApplicationController
  def index
    @users=User.all
  end

  def show
    begin
      @user = User.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
      user = nil
    end
  end
  def destroy
     @user = User.find(params[:id])
     if @user.destroy
       flash[:success] = 'user was successfully deleted.'
       redirect_to users_url
     else
       flash[:error] = 'Something went wrong'
     end 
  end
  
  def edit   
    @user =User.find(params[:id])   
  end   
  def update
    @user = User.find(params[:id])
    if @user.update_attribute(user_params)
      else
        render 'edit'
      end
    end
end
