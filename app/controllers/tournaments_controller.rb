class TournamentsController < ApplicationController
    def index
           @tournaments = Tournament.all
    end
    
   # def random(teams)
    #end    


  def create
    @tournament =Tournament.new(tournament_params)      
       respond_to do |format|
           if @tournament.save
             flash[:notice] = 'tournament was successfully created.'
             format.html { redirect_to(@tournament) }
           else
             format.html { render action: "new" }
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
           
         else
           flash[:error] = 'Something went wrong'
           redirect_to tournaments_url
         end
       end
         
       def new
         @tournament = Tournament.new
       end
       def edit   
         @tournament = Tournament.find(params[:id])   
       end   
       def update
        respond_to do |format|
          @tournament = Tournament.find(params[:id])
          if @tournament.update(tournament_params)
            format.html { redirect_to @tournament, notice: 'tournament was successfully updated.' }
          else
            format.html { render :edit }
             end
        end
      end
      private
    
      def tournament_params   
        params.require(:tournament).permit(:name, :start_date, :end_date)    
      end 
    end


