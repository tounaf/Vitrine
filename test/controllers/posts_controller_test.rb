require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get presentation" do
    get posts_presentation_url
    assert_response :success
  end

end
