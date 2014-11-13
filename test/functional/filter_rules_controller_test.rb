require 'test_helper'

class FilterRulesControllerTest < ActionController::TestCase
  setup do
    @filter_rule = filter_rules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filter_rules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filter_rule" do
    assert_difference('FilterRule.count') do
      post :create, filter_rule: { budget_code_id: @filter_rule.budget_code_id, contains: @filter_rule.contains }
    end

    assert_redirected_to filter_rule_path(assigns(:filter_rule))
  end

  test "should show filter_rule" do
    get :show, id: @filter_rule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filter_rule
    assert_response :success
  end

  test "should update filter_rule" do
    put :update, id: @filter_rule, filter_rule: { budget_code_id: @filter_rule.budget_code_id, contains: @filter_rule.contains }
    assert_redirected_to filter_rule_path(assigns(:filter_rule))
  end

  test "should destroy filter_rule" do
    assert_difference('FilterRule.count', -1) do
      delete :destroy, id: @filter_rule
    end

    assert_redirected_to filter_rules_path
  end
end
