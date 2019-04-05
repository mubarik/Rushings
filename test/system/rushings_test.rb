require "application_system_test_case"

class RushingsTest < ApplicationSystemTestCase
  setup do
    @rushing = rushings(:one)
  end

  test "visiting the index" do
    visit rushings_url
    assert_selector "h1", text: "Rushings"
  end

  test "creating a Rushing" do
    visit rushings_url
    click_on "New Rushing"

    fill_in "Att", with: @rushing.att
    fill_in "Attg", with: @rushing.attg
    fill_in "Avg", with: @rushing.avg
    fill_in "First", with: @rushing.first
    fill_in "Firstpercent", with: @rushing.firstpercent
    fill_in "Fortyplus", with: @rushing.fortyplus
    fill_in "Fum", with: @rushing.fum
    fill_in "Lng", with: @rushing.lng
    fill_in "Player", with: @rushing.player
    fill_in "Pos", with: @rushing.pos
    fill_in "Td", with: @rushing.td
    fill_in "Team", with: @rushing.team
    fill_in "Twentyplus", with: @rushing.twentyplus
    fill_in "Ydsg", with: @rushing.ydsg
    fill_in "Yrds", with: @rushing.yrds
    click_on "Create Rushing"

    assert_text "Rushing was successfully created"
    click_on "Back"
  end

  test "updating a Rushing" do
    visit rushings_url
    click_on "Edit", match: :first

    fill_in "Att", with: @rushing.att
    fill_in "Attg", with: @rushing.attg
    fill_in "Avg", with: @rushing.avg
    fill_in "First", with: @rushing.first
    fill_in "Firstpercent", with: @rushing.firstpercent
    fill_in "Fortyplus", with: @rushing.fortyplus
    fill_in "Fum", with: @rushing.fum
    fill_in "Lng", with: @rushing.lng
    fill_in "Player", with: @rushing.player
    fill_in "Pos", with: @rushing.pos
    fill_in "Td", with: @rushing.td
    fill_in "Team", with: @rushing.team
    fill_in "Twentyplus", with: @rushing.twentyplus
    fill_in "Ydsg", with: @rushing.ydsg
    fill_in "Yrds", with: @rushing.yrds
    click_on "Update Rushing"

    assert_text "Rushing was successfully updated"
    click_on "Back"
  end

  test "destroying a Rushing" do
    visit rushings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rushing was successfully destroyed"
  end
end
