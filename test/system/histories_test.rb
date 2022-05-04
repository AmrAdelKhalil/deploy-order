require "application_system_test_case"

class HistoriesTest < ApplicationSystemTestCase
  setup do
    @history = histories(:one)
  end

  test "visiting the index" do
    visit histories_url
    assert_selector "h1", text: "Histories"
  end

  test "should create history" do
    visit histories_url
    click_on "New history"

    fill_in "Release train", with: @history.release_train_id
    fill_in "Run result", with: @history.run_result
    fill_in "Version", with: @history.version
    click_on "Create History"

    assert_text "History was successfully created"
    click_on "Back"
  end

  test "should update History" do
    visit history_url(@history)
    click_on "Edit this history", match: :first

    fill_in "Release train", with: @history.release_train_id
    fill_in "Run result", with: @history.run_result
    fill_in "Version", with: @history.version
    click_on "Update History"

    assert_text "History was successfully updated"
    click_on "Back"
  end

  test "should destroy History" do
    visit history_url(@history)
    click_on "Destroy this history", match: :first

    assert_text "History was successfully destroyed"
  end
end
