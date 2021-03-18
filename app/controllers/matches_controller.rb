class MatchesController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
     
    def index
          @matches = Match.all
    end
      def create
        @match = Match.new(params[:id])
        # respond_to do |format|
          if @match.save
            # flash[:notice] = 'match was successfully created.'
            # format.html { redirect_to(@match) }
            # format.xml { render xml: @match, status: :created, location: @match }
            flash[:notice] = "Successfully created match!"
            redirect_to matches_path(@match)
          else
            # format.html { render action: "new" }
            # format.xml { render xml: @match.errors, status: :unprocessable_entity }
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
         redirect_to matches_url
         if @match.destroy
           flash[:success] = 'match was successfully deleted.'
           redirect_to matches_url
         else
           flash[:error] = 'Something went wrong'
         end 
      end

      def match_params   
        params.require(:match).permit(:name, :result, :broadcast_link, :start_date, :end_date)   
      end   
      
      def edit   
        @product = Product.find(params[:id])   
      end   
      def update
        @match = Match.find(params[:id])
          if @match.update_attributes(params[:match])
            flash[:success] = "Match was successfully updated"
            redirect_to @match
          else
            flash[:error] = "Something went wrong"
            render 'edit'
          end
      end
    
    end
  
