require "test_helper"

class SuscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suscription = suscriptions(:one)
  end

  test "should get index" do
    get suscriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_suscription_url
    assert_response :success
  end

  test "should create suscription" do
    assert_difference("Suscription.count") do
      post suscriptions_url, params: { suscription: { limit: @suscription.limit, name: @suscription.name, price: @suscription.price } }
    end

    assert_redirected_to suscription_url(Suscription.last)
  end

  test "should show suscription" do
    get suscription_url(@suscription)
    assert_response :success
  end

  test "should get edit" do
    get edit_suscription_url(@suscription)
    assert_response :success
  end

  test "should update suscription" do
    patch suscription_url(@suscription), params: { suscription: { limit: @suscription.limit, name: @suscription.name, price: @suscription.price } }
    assert_redirected_to suscription_url(@suscription)
  end

  test "should destroy suscription" do
    assert_difference("Suscription.count", -1) do
      delete suscription_url(@suscription)
    end

    assert_redirected_to suscriptions_url
  end
end
