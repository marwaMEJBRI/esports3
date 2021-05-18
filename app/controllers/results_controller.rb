class ResultsController < ApplicationController
    def index
      @results = Result.all
    end
  
    def new
      @result = Result.new
    end
  
    def create
      @result = Result.new(result_params)
  
      if @result.save
        redirect_to @result
      else
        render :new
      end
    end
    def show
        begin
          @result = Result.find(params[:id])
        rescue ActiveRecord::RecordNotFound => e
          result = nil
        end 
        end
      
  
    def edit
      @result = Result.find(params[:id])
    end
  
    def update
      @result = Result.find(params[:id])
  
      if @result.update(result_params)
        redirect_to @result
      else
        render :edit
      end
    end
  
    def destroy
      @result = Result.find(params[:id])
        @result.destroy
  
      redirect_to root_path
    end
    
    private
      def result_params
        params.require(:result).permit(:score_team_one, :score_team_two, :match_name, :winner)
      end
  
end



