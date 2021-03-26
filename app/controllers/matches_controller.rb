class MatchesController < ApplicationController
     before_action :authenticate_user!, except: [:index, :show]
   
    def match_params   
      params.require(:match).permit(:name, :result, :broadcast_link, :start_date, :end_date)   
    end   
    
    def index
          @matches = Match.all
         
    end
    def create
        @match = Match.new(params[:id])
          if @match.save
            flash[:notice] = "Successfully created match!"
            redirect_to matches_path(@match)
          else
            flash[:notice] = "Error creating new match!"
            render :new
          end
    end
      
      def new
          @match = Match.new
      end
        
      
      def show
        begin
          @match = Match.find(params[:id])
        rescue ActiveRecord::RecordNotFound => e
          match = nil
        end
      end
      def destroy
         @match = Match.find(params[:id])
         if @match.destroy
           flash[:success] = 'match was successfully deleted.'
           redirect_to matches_url
         else
           flash[:error] = 'Something went wrong'
         end 
      end

      
      
      def edit   
        @match =Match.find(params[:id])   
      end   
      def update
        @match = Match.find(params[:id])
        if @match.update_attribute(match_params)
          else
            render 'edit'
          end
        end
 end
    
    
  
