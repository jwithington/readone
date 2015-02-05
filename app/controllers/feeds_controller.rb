class FeedsController < ApplicationController
	def index
    @feeds = current_user.feeds
  end
 	
 	def show
  end
 
	def new
		@feed = @feeds.new
  end

  def edit
  end

  def create
    @tfeed = current_user.feeds.new(feed_params)

    # respond_to do |format|
    #   if @todo_list.save
    #     format.html { redirect_to @todo_list, notice: 'Todo list was successfully created.' }
    #     format.json { render action: 'show', status: :created, location: @todo_list }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @todo_list.errors, status: :unprocessable_entity }
    #   end
    # end
  end
end
