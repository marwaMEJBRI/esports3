class TeamsController < ApplicationController
      #  before_action :set_instrument, only: [:show, :edit, :update, :destroy]
       before_action :authenticate_user!, except: [:index, :show]
    def index
          @teams = Team.all
    end
      def create
          @team = Team.new(params[:id])
         #respond_to do |format|
           if @team.save
              # flash[:notice] = 'team was successfully created.'
              # format.html { redirect_to(@team) }
              # format.xml { render xml: @team, status: :created, location: @team }
              flash[:notice] = "Successfully created team!"
              redirect_to teams_path(@team)
            else
              # format.html { render action: "new" }
              # format.xml { render xml: @team.errors, status: :unprocessable_entity }
              flash[:notice] = "Error creating new team!"
              render :new
            end
         end
         def new
           @team = Team.new
         end
        
       end
       def show
         @team = Team.find(params[:id])
      end
      def new
        @team = Team.new
     end
     def show
      @team = Team.find(params[:id])
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
      

