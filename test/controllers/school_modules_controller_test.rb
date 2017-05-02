require 'test_helper'

class SchoolModulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school_module = school_modules(:one)
  end

  test "should get index" do
    get school_modules_url
    assert_response :success
  end

  test "should get new" do
    get new_school_module_url
    assert_response :success
  end

  test "should create school_module" do
    assert_difference('SchoolModule.count') do
      post school_modules_url, params: { school_module: { code: @school_module.code, name: @school_module.name } }
    end

    assert_redirected_to school_module_url(SchoolModule.last)
  end

  test "should show school_module" do
    get school_module_url(@school_module)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_module_url(@school_module)
    assert_response :success
  end

  test "should update school_module" do
    patch school_module_url(@school_module), params: { school_module: { code: @school_module.code, name: @school_module.name } }
    assert_redirected_to school_module_url(@school_module)
  end

  test "should destroy school_module" do
    assert_difference('SchoolModule.count', -1) do
      delete school_module_url(@school_module)
    end

    assert_redirected_to school_modules_url
  end
end
