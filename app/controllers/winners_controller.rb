class WinnersController < ApplicationController
  def index
      @winners = Winner.all
end

def new
 @winner = Winner.new
end

def create
 @winner = Winner.new(winner_params)
 if  @winner.save
   flash[:notice] = "Winner was submitted succsefully"
   redirect_to (@winner)
 else
   render :new
 end 
end
 
def show
  begin
    @winner = Winner.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    winner = nil
  end
end
private
  
def winner_params   
 params.require(:winner).permit(:name, :score, :tournament_name)    
end  

end