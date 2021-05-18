class TeamsController < ApplicationController

  
  def index
     @teams = Team.all
  end
  def new
        @team = Team.new
 end

def show
  @team = Team.find(params[:id])
end

def create
@team =Team.new(team_params)      
  respond_to do |format|
      if @team.save
        flash[:notice] = 'team was successfully created.'
        format.html { redirect_to(@team) }
      else
        format.html { render action: "new" }
      end
     end 
   

 def destroy
   @team = Team.find(params[:id])
   if @team.destroy
     flash[:success] = 'team was successfully deleted.'
      redirect_to teams_url
   else
     flash[:error] = 'Something went wrong'
     redirect_to teams_url
   end
 end


  def edit   
    @team = Team.find(params[:id])   
  end 


  def update
  @team = Team.find(params[:id])
  if @team.update(team_params)
  redirect_to @team
  else
  render :edit
  end
  end
     private 
     def team_params   
       params.require(:team).permit(:name, :tournament_name)   
     end
end
end