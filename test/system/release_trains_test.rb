require "application_system_test_case"

class ReleaseTrainsTest < ApplicationSystemTestCase
  setup do
    @release_train = release_trains(:one)
  end

  test "visiting the index" do
    visit release_trains_url
    assert_selector "h1", text: "Release trains"
  end

  test "should create release train" do
    visit release_trains_url
    click_on "New release train"

    fill_in "Backend", with: @release_train.backend
    fill_in "Engineering manager", with: @release_train.engineering_manager
    fill_in "Rt date", with: @release_train.rt_date
    click_on "Create Release train"

    assert_text "Release train was successfully created"
    click_on "Back"
  end

  test "should update Release train" do
    visit release_train_url(@release_train)
    click_on "Edit this release train", match: :first

    fill_in "Backend", with: @release_train.backend
    fill_in "Engineering manager", with: @release_train.engineering_manager
    fill_in "Rt date", with: @release_train.rt_date
    click_on "Update Release train"

    assert_text "Release train was successfully updated"
    click_on "Back"
  end

  test "should destroy Release train" do
    visit release_train_url(@release_train)
    click_on "Destroy this release train", match: :first

    assert_text "Release train was successfully destroyed"
  end
end
