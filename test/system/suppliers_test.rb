require "application_system_test_case"

class SuppliersTest < ApplicationSystemTestCase
  setup do
    @supplier = suppliers(:one)
  end

  test "visiting the index" do
    visit suppliers_url
    assert_selector "h1", text: "Suppliers"
  end

  test "should create supplier" do
    visit suppliers_url
    click_on "New supplier"

    fill_in "Address", with: @supplier.address
    fill_in "City", with: @supplier.city
    fill_in "Contact name", with: @supplier.contact_name
    fill_in "Created at", with: @supplier.created_at
    fill_in "Email", with: @supplier.email
    fill_in "Name", with: @supplier.name
    fill_in "Notes", with: @supplier.notes
    fill_in "Phone", with: @supplier.phone
    fill_in "Status", with: @supplier.status
    fill_in "Url", with: @supplier.url
    fill_in "Zip", with: @supplier.zip
    click_on "Create Supplier"

    assert_text "Supplier was successfully created"
    click_on "Back"
  end

  test "should update Supplier" do
    visit supplier_url(@supplier)
    click_on "Edit this supplier", match: :first

    fill_in "Address", with: @supplier.address
    fill_in "City", with: @supplier.city
    fill_in "Contact name", with: @supplier.contact_name
    fill_in "Created at", with: @supplier.created_at
    fill_in "Email", with: @supplier.email
    fill_in "Name", with: @supplier.name
    fill_in "Notes", with: @supplier.notes
    fill_in "Phone", with: @supplier.phone
    fill_in "Status", with: @supplier.status
    fill_in "Url", with: @supplier.url
    fill_in "Zip", with: @supplier.zip
    click_on "Update Supplier"

    assert_text "Supplier was successfully updated"
    click_on "Back"
  end

  test "should destroy Supplier" do
    visit supplier_url(@supplier)
    click_on "Destroy this supplier", match: :first

    assert_text "Supplier was successfully destroyed"
  end
end
