class FeedsController < ApplicationController

	def index
    @feeds = current_user.feeds
  end
 	
 	def show
  end
 
	def new
    # This will assign the user id of the currently logged-in user to the feed
		@feed = current_user.feeds.new
  end

  def edit
  end

  def destroy
    Feed.find(params[:id]).destroy
    redirect_to feeds_path
  end
  
  def create
    # Same as #new, assigns the user id of the currently logged-in user to the feed
    # The feed_params go here as arguments for the newly created feed
    @feed = current_user.feeds.new(feed_params)
    # render plain: params[:feedurl].inspect
    if @feed.save
      redirect_to feeds_path
    end

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

  private

  def feed_params
    params.require(:feed).permit(:feedurl)
  end 
end
