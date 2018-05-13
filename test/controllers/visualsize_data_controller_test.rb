require 'test_helper'

class VisualsizeDataControllerTest < ActionDispatch::IntegrationTest
  test "should get viewData" do
    get visualsize_data_viewData_url
    assert_response :success
  end

end
