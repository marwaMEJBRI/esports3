class ScoresController < ApplicationController
  def index
    @scores = Score.all
end
def create
  
    @score = Score.new(params[:id])
   #respond_to do |format|
     if @score.save
        # flash[:notice] = 'score was successfully created.'
        # format.html { redirect_to(@score) }
        # format.xml { render xml: @score, status: :created, location: @score }
        flash[:notice] = "Successfully created score!"
        redirect_to scores_path(@score)
      else
        # format.html { render action: "new" }
        # format.xml { render xml: @score.errors, status: :unprocessable_entity }
        flash[:notice] = "Error creating new score!"
        render :new
      end
   end
   def new
     @score = Score.new
   end
  
 end
 def show
   @score = Score.find(params[:id])
end
def new
  @score = Score.new
end
def show
@score = Score.find(params[:id])
rescue ActiveRecord::RecordNotFound => e
  score = nil
end
def destroy
  @score = Score.find(params[:id])
  if @score.destroy
    flash[:success] = 'score was successfully deleted.'
     redirect_to scores_url
  else
    flash[:error] = 'Something went wrong'
    redirect_to scores_url
  end
end
def score_params   
  params.require(:score).permit(:scoreteam)   
end   
def edit   
  @score = Score.find(params[:id])   
end   
def update
  @score = Score.find(params[:id])
    if @score.update_attributes(params[:score])
      flash[:success] = "score was successfully updated"
      redirect_to @score
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
end
