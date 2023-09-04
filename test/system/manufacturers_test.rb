require "application_system_test_case"

class ManufacturersTest < ApplicationSystemTestCase
  setup do
    @manufacturer = manufacturers(:one)
  end

  test "visiting the index" do
    visit manufacturers_url
    assert_selector "h1", text: "Manufacturers"
  end

  test "should create manufacturer" do
    visit manufacturers_url
    click_on "New manufacturer"

    fill_in "Created at", with: @manufacturer.created_at
    fill_in "Email", with: @manufacturer.email
    fill_in "Name", with: @manufacturer.name
    fill_in "Phone", with: @manufacturer.phone
    fill_in "Status", with: @manufacturer.status
    fill_in "Support url", with: @manufacturer.support_url
    fill_in "Url", with: @manufacturer.url
    click_on "Create Manufacturer"

    assert_text "Manufacturer was successfully created"
    click_on "Back"
  end

  test "should update Manufacturer" do
    visit manufacturer_url(@manufacturer)
    click_on "Edit this manufacturer", match: :first

    fill_in "Created at", with: @manufacturer.created_at
    fill_in "Email", with: @manufacturer.email
    fill_in "Name", with: @manufacturer.name
    fill_in "Phone", with: @manufacturer.phone
    fill_in "Status", with: @manufacturer.status
    fill_in "Support url", with: @manufacturer.support_url
    fill_in "Url", with: @manufacturer.url
    click_on "Update Manufacturer"

    assert_text "Manufacturer was successfully updated"
    click_on "Back"
  end

  test "should destroy Manufacturer" do
    visit manufacturer_url(@manufacturer)
    click_on "Destroy this manufacturer", match: :first

    assert_text "Manufacturer was successfully destroyed"
  end
end
