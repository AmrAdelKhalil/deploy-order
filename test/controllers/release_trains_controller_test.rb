require "test_helper"

class ReleaseTrainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @release_train = release_trains(:one)
  end

  test "should get index" do
    get release_trains_url
    assert_response :success
  end

  test "should get new" do
    get new_release_train_url
    assert_response :success
  end

  test "should create release_train" do
    assert_difference("ReleaseTrain.count") do
      post release_trains_url, params: { release_train: { backend: @release_train.backend, engineering_manager: @release_train.engineering_manager, rt_date: @release_train.rt_date } }
    end

    assert_redirected_to release_train_url(ReleaseTrain.last)
  end

  test "should show release_train" do
    get release_train_url(@release_train)
    assert_response :success
  end

  test "should get edit" do
    get edit_release_train_url(@release_train)
    assert_response :success
  end

  test "should update release_train" do
    patch release_train_url(@release_train), params: { release_train: { backend: @release_train.backend, engineering_manager: @release_train.engineering_manager, rt_date: @release_train.rt_date } }
    assert_redirected_to release_train_url(@release_train)
  end

  test "should destroy release_train" do
    assert_difference("ReleaseTrain.count", -1) do
      delete release_train_url(@release_train)
    end

    assert_redirected_to release_trains_url
  end
end
