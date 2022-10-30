require "application_system_test_case"

class SuscriptionsTest < ApplicationSystemTestCase
  setup do
    @suscription = suscriptions(:one)
  end

  test "visiting the index" do
    visit suscriptions_url
    assert_selector "h1", text: "Suscriptions"
  end

  test "should create suscription" do
    visit suscriptions_url
    click_on "New suscription"

    fill_in "Limit", with: @suscription.limit
    fill_in "Name", with: @suscription.name
    fill_in "Price", with: @suscription.price
    click_on "Create Suscription"

    assert_text "Suscription was successfully created"
    click_on "Back"
  end

  test "should update Suscription" do
    visit suscription_url(@suscription)
    click_on "Edit this suscription", match: :first

    fill_in "Limit", with: @suscription.limit
    fill_in "Name", with: @suscription.name
    fill_in "Price", with: @suscription.price
    click_on "Update Suscription"

    assert_text "Suscription was successfully updated"
    click_on "Back"
  end

  test "should destroy Suscription" do
    visit suscription_url(@suscription)
    click_on "Destroy this suscription", match: :first

    assert_text "Suscription was successfully destroyed"
  end
end
