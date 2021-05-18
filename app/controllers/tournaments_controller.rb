class TournamentsController < ApplicationController
  def index
         @tournaments = Tournament.all
  end
 
  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(tournament_params)
    if  @tournament.save
      flash[:notice] = "Tournament was submitted succsefully"
      redirect_to (@tournament)
    else
      render :new
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

    def winner_tournament 
      @winner = Winner.winner_tournament
      format.html {redirect_towinner_tournament_path }  
     end

    private
  
    def tournament_params   
      params.require(:tournament).permit(:name, :start_date, :end_date, :winner, :match_id, :team_id, :number_of_matches)    
    end 
  end