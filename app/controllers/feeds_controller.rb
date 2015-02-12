class FeedsController < ApplicationController
	def index
    @feeds = Feed.all
  end
 	
 	def show
  end
 
	def new
		@feed = Feed.new
  end

  def edit
  end

  def destroy
    Feed.find(params[:id]).destroy
    redirect_to feeds_path
  end
  
  def feed_params
    params.require(:feed).permit(:url)
  end

  def create
    @feed = Feed.new(params[:feedurl])
    @feed.save
    redirect_to @feed

    # respond_to do |format|
    #   if @feed.save
    #     format.html { redirect_to @feed, notice: 'Feed was successfully added.' }
    #     format.json { render action: 'show', status: :created, location: @feed }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @feed.errors, status: :unprocessable_entity }
    # #   end
    # end
  end
end
