require "application_system_test_case"

class SystemServicesTest < ApplicationSystemTestCase
  setup do
    @system_service = system_services(:one)
  end

  test "visiting the index" do
    visit system_services_url
    assert_selector "h1", text: "System services"
  end

  test "should create system service" do
    visit system_services_url
    click_on "New system service"

    fill_in "Name", with: @system_service.name
    fill_in "Squad", with: @system_service.squad
    fill_in "Tribe", with: @system_service.tribe
    click_on "Create System service"

    assert_text "System service was successfully created"
    click_on "Back"
  end

  test "should update System service" do
    visit system_service_url(@system_service)
    click_on "Edit this system service", match: :first

    fill_in "Name", with: @system_service.name
    fill_in "Squad", with: @system_service.squad
    fill_in "Tribe", with: @system_service.tribe
    click_on "Update System service"

    assert_text "System service was successfully updated"
    click_on "Back"
  end

  test "should destroy System service" do
    visit system_service_url(@system_service)
    click_on "Destroy this system service", match: :first

    assert_text "System service was successfully destroyed"
  end
end
