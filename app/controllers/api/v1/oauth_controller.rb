class Api::V1::OauthController < ApplicationController
	#remove when done, they should be logged in to do this
	skip_before_action :authorized, only: [:appLogin, :authorize]

	$oauth = StateGenerator.new()
	$authorizeUrl = "https://www.reddit.com/api/v1/authorize?client_id=#{ENV["client_id"]}&response_type=code&state=#{$oauth.state}&redirect_uri=#{ENV["redirect_uri"]}&duration=permanent&scope=#{ENV["scope"]}"
	$tokenUrl = "https://www.reddit.com/api/v1/access_token"

	$appGrantType = "authorization_code"
	

	def appLogin
		redirect_to $authorizeUrl
	end

	def authorize
		# if params["access_token"]
		# 	onlyhere = true
		# 	byebug
		# end



		# eUg4US1LWjA0ZTVPQ2c6cEt1Qk5aQ3NrODd1QzlxeU8wUE9QR1JPYkM0

		code = params[:code]
		basicCode = Base64.strict_encode64("#{ENV["client_id"]}:#{ENV["client_secret"]}")
		body = {grant_type: $appGrantType, 
						code: code, 
						redirect_uri: ENV["redirect_uri"]}, 
						{:Authorization => "Basic #{basicCode}"}

		RestClient.post($tokenUrl, {grant_type: $appGrantType, 
		code: code, 
		redirect_uri: ENV["redirect_uri"]}, 
		{:Authorization => "Basic #{basicCode}"}) { |response, request, result|
  		case response.code
 			when 301, 302, 307
    		response.follow_redirection
			else
				response.return!
				byebug
				#Respond to front end with token. 
			end
		}

	end

end
