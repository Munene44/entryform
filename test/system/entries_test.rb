require "application_system_test_case"

class EntriesTest < ApplicationSystemTestCase
  setup do
    @entry = entries(:one)
  end

  test "visiting the index" do
    visit entries_url
    assert_selector "h1", text: "Entries"
  end

  test "creating a Entry" do
    visit entries_url
    click_on "New Entry"

    fill_in "Address", with: @entry.address
    fill_in "Alias", with: @entry.alias
    fill_in "Date-of-birth", with: @entry.date-of-birth
    fill_in "First-name", with: @entry.first-name
    fill_in "Height", with: @entry.height
    fill_in "Marks-or-tattoos", with: @entry.marks-or-tattoos
    fill_in "Second-name", with: @entry.second-name
    fill_in "Sir-name", with: @entry.sir-name
    click_on "Create Entry"

    assert_text "Entry was successfully created"
    click_on "Back"
  end

  test "updating a Entry" do
    visit entries_url
    click_on "Edit", match: :first

    fill_in "Address", with: @entry.address
    fill_in "Alias", with: @entry.alias
    fill_in "Date-of-birth", with: @entry.date-of-birth
    fill_in "First-name", with: @entry.first-name
    fill_in "Height", with: @entry.height
    fill_in "Marks-or-tattoos", with: @entry.marks-or-tattoos
    fill_in "Second-name", with: @entry.second-name
    fill_in "Sir-name", with: @entry.sir-name
    click_on "Update Entry"

    assert_text "Entry was successfully updated"
    click_on "Back"
  end

  test "destroying a Entry" do
    visit entries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entry was successfully destroyed"
  end
end
