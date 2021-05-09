class RostersController < ApplicationController
    def index
        @rosters = Roster.all 
    end
    def list
        @roster = true
        @team = Team.find(params["team_id"])
        @rosters = @team.rosters
        #@users = User.where("id != ? and team_id = ?", current_user.id, @team.id).all
      end

      def new
        @roster = Roster.new
    end
      def create
        @roster =Roster.new(roster_params)    
               if  @roster.save
              flash[:notice] = "Successfully created roster!"
              redirect_to rosters_path(@roster)
             else
               flash[:notice] = "Error creating new roster!"
               render :new
             end
      end
    
    
     
        def show
          begin
            @roster = Roster.find(params[:id])
          rescue ActiveRecord::RecordNotFound => e
            roster = nil
          end
  
        end
        
        # def add_player
        #     @roster = Roster.find(params[:id])
        #     @user = User.find(params[:user_id])
        #    # @user =User.new(roster_params)    
        #        if @roster.save
        #       flash[:notice] = "Successfully added player to roster!"
        #       redirect_to rosters_path(@roster)
        #     else
        #       flash[:notice] = "Error!"
        #       render :show
        #     end
            
        # end
      
       
        def destroy
          @roster = Roster.find(params[:id])
          @roster.destroy
      
          redirect_to rosters_path
        end
        def edit   
          @roster =Roster.find(params[:id])   
        end  
        def update
          respond_to do |format|
            @roster = Roster.find(params[:id])
            if @roster.update(roster_params)
              format.html { redirect_to @roster, notice: 'roster was successfully updated.' }
            else
              format.html { render :edit }
               end
          end
        end
          
          
   private
   
   def roster_params
       params.require(:roster).permit(:name, :team_id, :user_id )
   end

end
