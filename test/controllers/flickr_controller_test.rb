require 'test_helper'

class FlickrControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get flickr_home_url
    assert_response :success
  end

end
