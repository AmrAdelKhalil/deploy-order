require "test_helper"

class SystemServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @system_service = system_services(:one)
  end

  test "should get index" do
    get system_services_url
    assert_response :success
  end

  test "should get new" do
    get new_system_service_url
    assert_response :success
  end

  test "should create system_service" do
    assert_difference("SystemService.count") do
      post system_services_url, params: { system_service: { name: @system_service.name, squad: @system_service.squad, tribe: @system_service.tribe } }
    end

    assert_redirected_to system_service_url(SystemService.last)
  end

  test "should show system_service" do
    get system_service_url(@system_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_system_service_url(@system_service)
    assert_response :success
  end

  test "should update system_service" do
    patch system_service_url(@system_service), params: { system_service: { name: @system_service.name, squad: @system_service.squad, tribe: @system_service.tribe } }
    assert_redirected_to system_service_url(@system_service)
  end

  test "should destroy system_service" do
    assert_difference("SystemService.count", -1) do
      delete system_service_url(@system_service)
    end

    assert_redirected_to system_services_url
  end
end
