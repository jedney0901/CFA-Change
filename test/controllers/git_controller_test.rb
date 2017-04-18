require 'test_helper'

class GitControllerTest < ActionDispatch::IntegrationTest
  test "should get commit" do
    get git_commit_url
    assert_response :success
  end

end
