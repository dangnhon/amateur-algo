require "application_system_test_case"

class AlgosTest < ApplicationSystemTestCase
  setup do
    @algo = algos(:one)
  end

  test "visiting the index" do
    visit algos_url
    assert_selector "h1", text: "Algos"
  end

  test "should create algo" do
    visit algos_url
    click_on "New algo"

    check "Completed" if @algo.completed
    fill_in "Difficulty", with: @algo.difficulty
    fill_in "Display name", with: @algo.display_name
    fill_in "Link name", with: @algo.link_name
    fill_in "Solution", with: @algo.solution
    fill_in "Type of", with: @algo.type_of
    click_on "Create Algo"

    assert_text "Algo was successfully created"
    click_on "Back"
  end

  test "should update Algo" do
    visit algo_url(@algo)
    click_on "Edit this algo", match: :first

    check "Completed" if @algo.completed
    fill_in "Difficulty", with: @algo.difficulty
    fill_in "Display name", with: @algo.display_name
    fill_in "Link name", with: @algo.link_name
    fill_in "Solution", with: @algo.solution
    fill_in "Type of", with: @algo.type_of
    click_on "Update Algo"

    assert_text "Algo was successfully updated"
    click_on "Back"
  end

  test "should destroy Algo" do
    visit algo_url(@algo)
    click_on "Destroy this algo", match: :first

    assert_text "Algo was successfully destroyed"
  end
end
