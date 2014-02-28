class StoriesController < ApplicationController
  
  def index
  end

  def new
    @story = Story.new
    @user = current_user
  end

  def create
    @story = Story.new(url: params[:story][:url])
    @user = User.find_by(id: session["user_id"])
    @user.stories << @story
binding.pry
    if @story.save 
      redirect_to story_path(@story)
    else
      flash[:error] = "The story didn't save."
      redirect_to root_path
    end
  end

  def show
    @story = Story.find_by(id: params[:id])
  end

  # private

  # def story_params
  #   params.require(:story).permit(:url, )
  # end

end