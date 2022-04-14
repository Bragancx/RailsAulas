require 'test_helper'

class FinancialControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get financial_index_url
    assert_response :success
  end

  test "should get new" do
    get financial_new_url
    assert_response :success
  end

  test "should get edit" do
    get financial_edit_url
    assert_response :success
  end

end
