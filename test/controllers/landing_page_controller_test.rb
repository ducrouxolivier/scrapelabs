require "test_helper"

class LandingPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get landing_page_index_url
    assert_response :success
  end

  test "root shows hello world banner" do
    get root_url
    assert_response :success
    assert_select "#hello-banner", text: "hello world"
  end
end
