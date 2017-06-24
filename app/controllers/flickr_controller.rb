class FlickrController < ApplicationController
  
  include FlickrHelper

  def home
  	#if !params[:user_id].nil?
	#	render_flickr_sidebar_widget(params[:user_id])
  	#end
  end

end
