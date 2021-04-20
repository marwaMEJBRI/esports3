class PlayersController < ApplicationController
  
  

  def index
         @players = Player.all
  end
  
def create
  @player =Player.new(player_params)      
     respond_to do |format|
         if @player.save
           flash[:notice] = 'player was successfully created.'
           format.html { redirect_to(@player) }
         else
           format.html { render action: "new" }
         end
        end 
    

       def new
         @player = Player.new
       end
     end
     def show
      begin
        @player = Player.find(params[:id])
      rescue ActiveRecord::RecordNotFound => e
        player = nil
      end
    end

     def destroy
       @player = Player.find(params[:id])
       if @player.destroy
         flash[:success] = 'player was successfully deleted.'
         redirect_to players_url
       else
         flash[:error] = 'Something went wrong'
         redirect_to players_url
       end
     end
     def new
       @player = Player.new
     end
     def edit   
       @player =Player.find(params[:id])   
     end   
     def update
      respond_to do |format|
        @player =Player.find(params[:id])
        if @player.update(player_params)
          format.html { redirect_to @player, notice: 'player was successfully updated.' }
        else
          format.html { render :edit }
           end
      end
    end
    private
    def player_params   
      params.require(:player).permit(:name, :email, :description)    
    end 
  end

