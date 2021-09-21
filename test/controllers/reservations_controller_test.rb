require 'test_helper'

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservation = reservations(:one)
  end

  test "should get index" do
    get reservations_url, as: :json
    assert_response :success
  end

  test "should create reservation" do
    assert_difference('Reservation.count') do
      post reservations_url, params: { reservation: { currency: @reservation.currency, end_date: @reservation.end_date, payout_amount: @reservation.payout_amount, security_amount: @reservation.security_amount, start_date: @reservation.start_date, status: @reservation.status, total_amount: @reservation.total_amount } }, as: :json
    end

    assert_response 201
  end

  test "should show reservation" do
    get reservation_url(@reservation), as: :json
    assert_response :success
  end

  test "should update reservation" do
    patch reservation_url(@reservation), params: { reservation: { currency: @reservation.currency, end_date: @reservation.end_date, payout_amount: @reservation.payout_amount, security_amount: @reservation.security_amount, start_date: @reservation.start_date, status: @reservation.status, total_amount: @reservation.total_amount } }, as: :json
    assert_response 200
  end

  test "should destroy reservation" do
    assert_difference('Reservation.count', -1) do
      delete reservation_url(@reservation), as: :json
    end

    assert_response 204
  end
end
