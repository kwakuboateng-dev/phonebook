require "application_system_test_case"

class PhonebookCrudsTest < ApplicationSystemTestCase
  setup do
    @phonebook_crud = phonebook_cruds(:one)
  end

  test "visiting the index" do
    visit phonebook_cruds_url
    assert_selector "h1", text: "Phonebook cruds"
  end

  test "should create phonebook crud" do
    visit phonebook_cruds_url
    click_on "New phonebook crud"

    fill_in "Address", with: @phonebook_crud.address
    fill_in "First name", with: @phonebook_crud.first_name
    fill_in "Last name", with: @phonebook_crud.last_name
    fill_in "Phone number", with: @phonebook_crud.phone_number
    click_on "Create Phonebook crud"

    assert_text "Phonebook crud was successfully created"
    click_on "Back"
  end

  test "should update Phonebook crud" do
    visit phonebook_crud_url(@phonebook_crud)
    click_on "Edit this phonebook crud", match: :first

    fill_in "Address", with: @phonebook_crud.address
    fill_in "First name", with: @phonebook_crud.first_name
    fill_in "Last name", with: @phonebook_crud.last_name
    fill_in "Phone number", with: @phonebook_crud.phone_number
    click_on "Update Phonebook crud"

    assert_text "Phonebook crud was successfully updated"
    click_on "Back"
  end

  test "should destroy Phonebook crud" do
    visit phonebook_crud_url(@phonebook_crud)
    click_on "Destroy this phonebook crud", match: :first

    assert_text "Phonebook crud was successfully destroyed"
  end
end
