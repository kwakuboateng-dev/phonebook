require "test_helper"

class PhonebookCrudsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phonebook_crud = phonebook_cruds(:one)
  end

  test "should get index" do
    get phonebook_cruds_url
    assert_response :success
  end

  test "should get new" do
    get new_phonebook_crud_url
    assert_response :success
  end

  test "should create phonebook_crud" do
    assert_difference("PhonebookCrud.count") do
      post phonebook_cruds_url, params: { phonebook_crud: { address: @phonebook_crud.address, first_name: @phonebook_crud.first_name, last_name: @phonebook_crud.last_name, phone_number: @phonebook_crud.phone_number } }
    end

    assert_redirected_to phonebook_crud_url(PhonebookCrud.last)
  end

  test "should show phonebook_crud" do
    get phonebook_crud_url(@phonebook_crud)
    assert_response :success
  end

  test "should get edit" do
    get edit_phonebook_crud_url(@phonebook_crud)
    assert_response :success
  end

  test "should update phonebook_crud" do
    patch phonebook_crud_url(@phonebook_crud), params: { phonebook_crud: { address: @phonebook_crud.address, first_name: @phonebook_crud.first_name, last_name: @phonebook_crud.last_name, phone_number: @phonebook_crud.phone_number } }
    assert_redirected_to phonebook_crud_url(@phonebook_crud)
  end

  test "should destroy phonebook_crud" do
    assert_difference("PhonebookCrud.count", -1) do
      delete phonebook_crud_url(@phonebook_crud)
    end

    assert_redirected_to phonebook_cruds_url
  end
end
