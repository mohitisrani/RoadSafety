require 'test_helper'

class VisualizeDataControllerTest < ActionDispatch::IntegrationTest
  test "should get viewData" do
    get visualize_data_viewData_url
    assert_response :success
  end

end
