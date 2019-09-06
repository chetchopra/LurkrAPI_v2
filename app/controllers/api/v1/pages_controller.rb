class Api::V1::PagesController < ApplicationController
	skip_before_action :authorized, only: [:show, :showv1]

	def show
		readme = File.read("#{Rails.root}/landingpages/landingpage.html")
		render html: readme.html_safe
	end

	def showv1
		readme = File.read("#{Rails.root}/landingpages/landingpagev1.html")
		render html: readme.html_safe
	end

end
