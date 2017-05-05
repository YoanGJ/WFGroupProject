require 'test_helper'

class ContactPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_post = contact_posts(:one)
  end

  test "should get index" do
    get contact_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_post_url
    assert_response :success
  end

  test "should create contact_post" do
    assert_difference('ContactPost.count') do
      post contact_posts_url, params: { contact_post: { email: @contact_post.email, message: @contact_post.message, name: @contact_post.name, phone: @contact_post.phone } }
    end

    assert_redirected_to contact_post_url(ContactPost.last)
  end

  test "should show contact_post" do
    get contact_post_url(@contact_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_post_url(@contact_post)
    assert_response :success
  end

  test "should update contact_post" do
    patch contact_post_url(@contact_post), params: { contact_post: { email: @contact_post.email, message: @contact_post.message, name: @contact_post.name, phone: @contact_post.phone } }
    assert_redirected_to contact_post_url(@contact_post)
  end

  test "should destroy contact_post" do
    assert_difference('ContactPost.count', -1) do
      delete contact_post_url(@contact_post)
    end

    assert_redirected_to contact_posts_url
  end
end
