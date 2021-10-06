require "application_system_test_case"

class F1sTest < ApplicationSystemTestCase
  setup do
    @f1 = f1s(:one)
  end

  test "visiting the index" do
    visit f1s_url
    assert_selector "h1", text: "F1s"
  end

  test "creating a F1" do
    visit f1s_url
    click_on "New F1"

    fill_in "Email", with: @f1.Email
    fill_in "Name", with: @f1.Name
    fill_in "Phone", with: @f1.phone
    click_on "Create F1"

    assert_text "F1 was successfully created"
    click_on "Back"
  end

  test "updating a F1" do
    visit f1s_url
    click_on "Edit", match: :first

    fill_in "Email", with: @f1.Email
    fill_in "Name", with: @f1.Name
    fill_in "Phone", with: @f1.phone
    click_on "Update F1"

    assert_text "F1 was successfully updated"
    click_on "Back"
  end

  test "destroying a F1" do
    visit f1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "F1 was successfully destroyed"
  end
end
