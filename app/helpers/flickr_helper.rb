module FlickrHelper

	def user_photos(user_id)

		FlickRaw.api_key= ENV["flickr_key"]
		FlickRaw.shared_secret= ENV["flickr_secret"]

		flickr.photos.search(:user_id => user_id)
	end

	def render_flickr_sidebar_widget(user_id, photo_count = 12, columns = 2)
	    begin
	      photos = user_photos(user_id, photo_count).in_groups_of(2)
	      render :partial => '/flickr/sidebar_widget', :locals => { :photos => photos }
	    rescue Exception
	      render :partial => '/flickr/unavailable'
	  	end
    end
end
