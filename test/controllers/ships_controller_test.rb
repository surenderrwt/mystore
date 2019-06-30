require 'test_helper'

class ShipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ship = ships(:one)
  end

  test "should get index" do
    get ships_url
    assert_response :success
  end

  test "should get new" do
    get new_ship_url
    assert_response :success
  end

  test "should create ship" do
    assert_difference('Ship.count') do
      post ships_url, params: { ship: { add1: @ship.add1, add2: @ship.add2, country_id: @ship.country_id, fname: @ship.fname, lname: @ship.lname, phone: @ship.phone, state_id: @ship.state_id } }
    end

    assert_redirected_to ship_url(Ship.last)
  end

  test "should show ship" do
    get ship_url(@ship)
    assert_response :success
  end

  test "should get edit" do
    get edit_ship_url(@ship)
    assert_response :success
  end

  test "should update ship" do
    patch ship_url(@ship), params: { ship: { add1: @ship.add1, add2: @ship.add2, country_id: @ship.country_id, fname: @ship.fname, lname: @ship.lname, phone: @ship.phone, state_id: @ship.state_id } }
    assert_redirected_to ship_url(@ship)
  end

  test "should destroy ship" do
    assert_difference('Ship.count', -1) do
      delete ship_url(@ship)
    end

    assert_redirected_to ships_url
  end
end
