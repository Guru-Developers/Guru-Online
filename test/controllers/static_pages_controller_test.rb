require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "Guru Dev"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "#{@base_title}" 
  end

  test "should get portfolio" do
    get :portfolio
    assert_response :success
    assert_select "title", "Portfolio | #{@base_title}" 
  end

  test "should get team" do
  	get :team
  	assert_response :success
  	assert_select "title", "Team | #{@base_title}" 
  end

end
