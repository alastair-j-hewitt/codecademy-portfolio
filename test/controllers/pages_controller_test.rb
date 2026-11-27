require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "welcome page renders" do
    get root_url
    assert_response :success
  end

  test "portfolio page renders" do
    get portfolio_url
    assert_response :success
  end

  test "about page renders" do
    get about_url
    assert_response :success
  end

  test "the layout links to every page" do
    get root_url
    assert_select "nav a[href=?]", root_path
    assert_select "nav a[href=?]", portfolio_path
    assert_select "nav a[href=?]", about_path
  end
end
