class RoundsController < ApplicationController
    class RoundsController < ApplicationController
        def index
          @rounds = Round.all
      end
      def create
        
          @round = Round.new(params[:id])
         #respond_to do |format|
           if @round.save
              # flash[:notice] = 'round was successfully created.'
              # format.html { redirect_to(@round) }
              # format.xml { render xml: @round, status: :created, location: @round }
              flash[:notice] = "Successfully created round!"
              redirect_to rounds_path(@round)
            else
              # format.html { render action: "new" }
              # format.xml { render xml: @round.errors, status: :unprocessable_entity }
              flash[:notice] = "Error creating new round!"
              render :new
            end
         end
         def new
           @round = Round.new
         end
        
       end
       def show
         @round = Round.find(params[:id])
      end
      def new
        @round = Round.new
      end
      def show
      @round = Round.find(params[:id])
      rescue ActiveRecord::RecordNotFound => e
        round = nil
      end
      def destroy
        @round = Round.find(params[:id])
        if @round.destroy
          flash[:success] = 'round was successfully deleted.'
           redirect_to rounds_url
        else
          flash[:error] = 'Something went wrong'
          redirect_to rounds_url
        end
      end
      def round_params   
        params.require(:round).permit(:scoreround)   
      end   
      def edit   
        @round = Round.find(params[:id])   
      end   
      def update
        @round = Round.find(params[:id])
          if @round.update_attributes(params[:round])
            flash[:success] = "round was successfully updated"
            redirect_to @round
          else
            flash[:error] = "Something went wrong"
            render 'edit'
          end
      end
      
end
