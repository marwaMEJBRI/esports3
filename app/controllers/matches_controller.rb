class MatchesController < ApplicationController
     
    def index
          @matches = Match.all
    end
    def create
      @match =Match.new(match_params)    
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
        @match.destroy
    
        redirect_to matches_path
      end
      def edit   
        @match =Match.find(params[:id])   
      end  
      def update
        respond_to do |format|
          @match = Match.find(params[:id])
          if @match.update(match_params)
            format.html { redirect_to @match, notice: 'match was successfully updated.' }
          else
            format.html { render :edit }
             end
        end
       
  
 end
 private
 def match_params   
  params.require(:match).permit(:name, :result, :brodcast_link, :start_date, :end_date, :tournament_id)   
end
end   
    

