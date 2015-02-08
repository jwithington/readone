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
  end
  
  def feed_params
    params.require(:feed).permit(:url)
  end
  def create
    @feed = current_user.feeds.new(feed_params)

    respond_to do |format|
      if @feed.save
        format.html { redirect_to @feed, notice: 'Feed was successfully added.' }
        format.json { render action: 'show', status: :created, location: @feed }
      else
        format.html { render action: 'new' }
        format.json { render json: @feed.errors, status: :unprocessable_entity }
      end
    end
  end
end
