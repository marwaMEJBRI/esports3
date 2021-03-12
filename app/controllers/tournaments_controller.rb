class TournamentsController < ApplicationController
     before_action :set_instrument, only: [:show, :edit, :update, :destroy]
     before_action :authenticate_user!, except: [:index, :show]
    def index
           @tournaments = Tournament.all
    end
      def create

         @tournaments = tournament.new(params[:id])
        
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
         @tournament = Tournament.find(params[:id])
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
         @product = Product.find(params[:id])   
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

