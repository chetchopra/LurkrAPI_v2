class Api::V1::SubredditsController < ApplicationController
	skip_before_action :authorized, only: [:show]

	def show 
    subredditName = params[:name]
    subredditPosts = Subreddit.getSubredditPosts(subredditName)
    render json: subredditPosts  
	end 
	
end
