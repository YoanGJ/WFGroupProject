require 'test_helper'

class ModuleAdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @module_admin = module_admins(:one)
  end

  test "should get index" do
    get module_admins_url
    assert_response :success
  end

  test "should get new" do
    get new_module_admin_url
    assert_response :success
  end

  test "should create module_admin" do
    assert_difference('ModuleAdmin.count') do
      post module_admins_url, params: { module_admin: { email: @module_admin.email, name: @module_admin.name, surname: @module_admin.surname } }
    end

    assert_redirected_to module_admin_url(ModuleAdmin.last)
  end

  test "should show module_admin" do
    get module_admin_url(@module_admin)
    assert_response :success
  end

  test "should get edit" do
    get edit_module_admin_url(@module_admin)
    assert_response :success
  end

  test "should update module_admin" do
    patch module_admin_url(@module_admin), params: { module_admin: { email: @module_admin.email, name: @module_admin.name, surname: @module_admin.surname } }
    assert_redirected_to module_admin_url(@module_admin)
  end

  test "should destroy module_admin" do
    assert_difference('ModuleAdmin.count', -1) do
      delete module_admin_url(@module_admin)
    end

    assert_redirected_to module_admins_url
  end
end
