class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def show
    begin
      @match = Match.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
      match = nil
    end 
    end
  
    

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)

    if @match.save
      redirect_to @match
    else
      render :new
    end
  end

  def edit
    @match = Match.find(params[:id])
  end

  def update
    @match = Match.find(params[:id])

    if @match.update(match_params)
      redirect_to @match
    else
      render :edit
    end
  end

  def destroy
    @match = Match.find(params[:id])
      @match.destroy

    redirect_to root_path
  end
  
  private
    def match_params
      params.require(:match).permit(:name, :result, :brodcast_link, :start_date, :end_date, :team_one, :team_two, :score_of_team_two, :score_of_team_one)
    end
end