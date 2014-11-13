require 'test_helper'

class BudgetCodesControllerTest < ActionController::TestCase
  setup do
    @budget_code = budget_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:budget_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create budget_code" do
    assert_difference('BudgetCode.count') do
      post :create, budget_code: { name: @budget_code.name }
    end

    assert_redirected_to budget_code_path(assigns(:budget_code))
  end

  test "should show budget_code" do
    get :show, id: @budget_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @budget_code
    assert_response :success
  end

  test "should update budget_code" do
    put :update, id: @budget_code, budget_code: { name: @budget_code.name }
    assert_redirected_to budget_code_path(assigns(:budget_code))
  end

  test "should destroy budget_code" do
    assert_difference('BudgetCode.count', -1) do
      delete :destroy, id: @budget_code
    end

    assert_redirected_to budget_codes_path
  end
end
