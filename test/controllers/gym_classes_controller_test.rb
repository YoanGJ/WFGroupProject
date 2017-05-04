require 'test_helper'

class GymClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gym_class = gym_classes(:one)
  end

  test "should get index" do
    get gym_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_gym_class_url
    assert_response :success
  end

  test "should create gym_class" do
    assert_difference('GymClass.count') do
      post gym_classes_url, params: { gym_class: { day: @gym_class.day, end_time: @gym_class.end_time, instructor_first_name: @gym_class.instructor_first_name, instructor_last_name: @gym_class.instructor_last_name, name: @gym_class.name, start_time: @gym_class.start_time, starting_date: @gym_class.starting_date } }
    end

    assert_redirected_to gym_class_url(GymClass.last)
  end

  test "should show gym_class" do
    get gym_class_url(@gym_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_gym_class_url(@gym_class)
    assert_response :success
  end

  test "should update gym_class" do
    patch gym_class_url(@gym_class), params: { gym_class: { day: @gym_class.day, end_time: @gym_class.end_time, instructor_first_name: @gym_class.instructor_first_name, instructor_last_name: @gym_class.instructor_last_name, name: @gym_class.name, start_time: @gym_class.start_time, starting_date: @gym_class.starting_date } }
    assert_redirected_to gym_class_url(@gym_class)
  end

  test "should destroy gym_class" do
    assert_difference('GymClass.count', -1) do
      delete gym_class_url(@gym_class)
    end

    assert_redirected_to gym_classes_url
  end
end
