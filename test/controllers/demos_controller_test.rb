require "test_helper"

class DemosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @demo = demos(:one)
  end

  test "should get index" do
    get demos_url
    assert_response :success
  end

  test "should get new" do
    get new_demo_url
    assert_response :success
  end

  test "should create demo" do
    assert_difference("Demo.count") do
      post demos_url, params: { demo: { address: @demo.address, birth_date: @demo.birth_date, city: @demo.city, country: @demo.country, first_name: @demo.first_name, gender: @demo.gender, integer: @demo.integer, landmark: @demo.landmark, last_name: @demo.last_name, middle_name: @demo.middle_name, pincode: @demo.pincode, state: @demo.state } }
    end

    assert_redirected_to demo_url(Demo.last)
  end

  test "should show demo" do
    get demo_url(@demo)
    assert_response :success
  end

  test "should get edit" do
    get edit_demo_url(@demo)
    assert_response :success
  end

  test "should update demo" do
    patch demo_url(@demo), params: { demo: { address: @demo.address, birth_date: @demo.birth_date, city: @demo.city, country: @demo.country, first_name: @demo.first_name, gender: @demo.gender, integer: @demo.integer, landmark: @demo.landmark, last_name: @demo.last_name, middle_name: @demo.middle_name, pincode: @demo.pincode, state: @demo.state } }
    assert_redirected_to demo_url(@demo)
  end

  test "should destroy demo" do
    assert_difference("Demo.count", -1) do
      delete demo_url(@demo)
    end

    assert_redirected_to demos_url
  end
end
