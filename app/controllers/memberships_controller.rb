class MembershipsController < ApplicationController
    def index
       @membership = Membership.all
        #render json: {memberships: Membership.all}
      end
    
      def create
         #@membership = Membership.create(membership_params)
        
        @membership = Membership.new(membership_params)
          respond_to do |format|
             if @membership.save
          #if @membership.valid?
          team = Team.find(@membership.team_id)
          flash[:notice] = 'membership was successfully created.'
          format.html { redirect_to(@membership) }

          #render json: { team: TeamSerializer.new(team), user: UserSerializer.new(current_user) }, status: :accepted
        else
            format.html { render action: "new" }

            #render json: { error: 'Failed to create Membership' }, status: :not_acceptable
        end
  end



    
      def delete_by_team
        @team = Team.find(params[:team_id])
        @membership = current_user.memberships.find { |membership| membership.team_id == @team.id }
        @membership.destroy
        format.html { redirect_to(@team) }
 #render json: { team: TeamSerializer.new(@team), user: UserSerializer.new(current_user) }, status: :accepted
      
      end
    
    
      private
      def membership_params
        params.require(:membership).permit(:user_id, :team_id)
      end
end
end
