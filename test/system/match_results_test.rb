require "application_system_test_case"

class MatchResultsTest < ApplicationSystemTestCase
  setup do
    @match_result = match_results(:one)
  end

  test "visiting the index" do
    visit match_results_url
    assert_selector "h1", text: "Match Results"
  end

  test "creating a Match result" do
    visit match_results_url
    click_on "New Match Result"

    fill_in "Game", with: @match_result.game_id
    fill_in "Losingteam", with: @match_result.losingteam
    fill_in "Score", with: @match_result.score
    fill_in "Winningteam", with: @match_result.winningteam_id
    click_on "Create Match result"

    assert_text "Match result was successfully created"
    click_on "Back"
  end

  test "updating a Match result" do
    visit match_results_url
    click_on "Edit", match: :first

    fill_in "Game", with: @match_result.game_id
    fill_in "Losingteam", with: @match_result.losingteam
    fill_in "Score", with: @match_result.score
    fill_in "Winningteam", with: @match_result.winningteam_id
    click_on "Update Match result"

    assert_text "Match result was successfully updated"
    click_on "Back"
  end

  test "destroying a Match result" do
    visit match_results_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Match result was successfully destroyed"
  end
end
