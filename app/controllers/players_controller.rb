class PlayersController < ApplicationController
  
  def player_params   
      params.require(:player).permit(:player_name, :email, :description )   
    end   
    def index
          @players = Player.all
    end
    def create
      @player = Player.new(params[:id])
     #respond_to do |format|
       if @player.save
        
          flash[:notice] = "Successfully created player!"
          redirect_to player_path(@player)

          
        else
         
          flash[:notice] = "Error creating new player"
          render :new
        end
      
      def new
          @player = Player.new
                end
        
      
      def show
        
       @player = Player.find(params[:id])
        end
      end
      def destroy
         @player = Player.find(params[:id])
         if @player.destroy
           flash[:success] = 'player was successfully deleted.'
           redirect_to players_url
         else
           flash[:error] = 'Something went wrong'
         end 
      end

      
      
      def edit   
        @player =Player.find(params[:id])   
      end   
      def update
        @player = Player.find(params[:id])
        if @player.update_attribute(player_params)
          else
            render 'edit'
          end
        end
      end


