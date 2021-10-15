require "application_system_test_case"

class DashesTest < ApplicationSystemTestCase
  setup do
    @dash = dashes(:one)
  end

  test "visiting the index" do
    visit dashes_url
    assert_selector "h1", text: "Dashes"
  end

  test "creating a Dash" do
    visit dashes_url
    click_on "New Dash"

    fill_in "Desc", with: @dash.desc
    fill_in "No", with: @dash.no
    click_on "Create Dash"

    assert_text "Dash was successfully created"
    click_on "Back"
  end

  test "updating a Dash" do
    visit dashes_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @dash.desc
    fill_in "No", with: @dash.no
    click_on "Update Dash"

    assert_text "Dash was successfully updated"
    click_on "Back"
  end

  test "destroying a Dash" do
    visit dashes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dash was successfully destroyed"
  end
end
