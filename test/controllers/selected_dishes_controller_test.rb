require 'test_helper'

class SelectedDishesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get selected_dishes_create_url
    assert_response :success
  end

end
