class TeamsController < ApplicationController

       def team_params   
        params.require(:team).permit(:name, :tournament_id)   
      end

       def index
          @teams = Team.all
       end
       def create
        @team =Team.new(team_params)    
               if @team.save
              flash[:notice] = "Successfully created team!"
              redirect_to teams_path(@team)
            else
              flash[:notice] = "Error creating new team!"
              render :new
            end
      end
    
         def new
           @team = Team.new
         end
        
       end
       def show
        begin
          @team = Team.find(params[:id])
        rescue ActiveRecord::RecordNotFound => e
          team = nil
        end
      end
      def new
        @team = Team.new
     end
     def show
      begin
        @team = Team.find(params[:id])
      rescue ActiveRecord::RecordNotFound => e
        team = nil
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
      def team_params   
        params.require(:team).permit(:name)   
      end   
      def edit   
        @team = Team.find(params[:id])   
      end   
      def update
        @team = Team.find(params[:id])
          if @team.update_attributes(params[:team])
            flash[:success] = "Team was successfully updated"
            redirect_to @team
          else
            flash[:error] = "Something went wrong"
            render 'edit'
          end
      end
    
      

