class Subreddit < ApplicationRecord
	has_many :subscriptions
	


	def self.extractPosts(subredditPosts)
    posts = []
    subredditPosts.each do |post|
      posts << {title: post["data"]["title"],
                img: post["data"]["thumbnail"],
                url: post["data"]["url"],
                num_comments: post["data"]["num_comments"],
                author: post["data"]["author"],
                self_text: post["data"]["selftext"],
                up_votes: post["data"]["ups"],
                permalink: post["data"]["permalink"],
                imageInfo: post["data"]["preview"],
                subredditName: post["data"]["subreddit"]        
        }
    end
    return posts
  end

  # This method returns post data from a specific subreddit in JSON format
  def self.getSubredditPosts(subredditName)
		# Hits provided subreddit url and parses the response
		parsedResponse = JSON.parse(RestClient.get("http://reddit.com/r/#{subredditName}.json"))

		# Traverses to the children (posts) in the response JSON
		subredditPosts = parsedResponse["data"]["children"]

		# TO-DO: Add in code to capture and handle errors
	return self.extractPosts(subredditPosts)





  end
end
