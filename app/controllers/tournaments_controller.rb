class TournamentsController < ApplicationController
    #  before_action :authenticate_user!, except: [:index, :show]
   # before_action :random_team , only: [:create]
   before_action :random, only: [:create]
    def index
           @tournaments = Tournament.all
    end
      def create3 
        
         @tournament = Tournament.new(params[:id])
        
         respond_to do |format|
           if @tournament.save
             flash[:notice] = 'tournament was successfully created.'
             format.html { redirect_to(@tournament) }
             format.xml { render xml: @tournament, status: :created, location: @tournament}
           else
             format.html { render action: "new" }
             format.xml { render xml: @tournament.errors, status: :unprocessable_entity }
           end
         end
         def new
           @tournament = Tournament.new
         end
       end
       def show
        begin
          @tournament = Tournament.find(params[:id])
        rescue ActiveRecord::RecordNotFound => e
          tournament = nil
        end
      end

       def destroy
         @tournament = Tournament.find(params[:id])
         if @tournament.destroy
           flash[:success] = 'tournament was successfully deleted.'
           redirect_to tournaments_url
         else
           flash[:error] = 'Something went wrong'
           redirect_to tournaments_url
         end
       end
       def tournament_params   
         params.require(:tournament).permit(:name, :start_date, :end_date)   
       end   
       def new
         @tournament = Tournament.new
       end
       def edit   
         @tournament = Tournament.find(params[:id])   
       end   
       def update
         @tournament = Tournament.find(params[:id])
           if @tournament.update_attributes(params[:tournament])
             flash[:success] = "tournament was successfully updated"
             redirect_to @tournament
           else
             flash[:error] = "Something went wrong"
             render 'edit'
           end
       end
      end

