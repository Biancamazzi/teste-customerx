require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get clients_url
    assert_response :success
  end

  test "protect index" do
    get clients_url
    assert_redirected_to new_user_session_url
  end
  
  test "protect create" do
    post clients_url, params: { client: { email: @client.email, name: @client.name, phone: @client.phone } }
    assert_redirected_to new_user_session_url
  end

  test "protect show" do
    get client_url(@client)
    assert_redirected_to new_user_session_url
  end

  test "protect get" do
    get edit_client_url(@client)
    assert_redirected_to new_user_session_url
  end

  test "protect update" do
    patch client_url(@client), params: { client: { email: @client.email, name: @client.name, phone: @client.phone } }
    assert_redirected_to new_user_session_url
  end

  test "protect destroy" do
    delete client_url(@client)
    assert_redirected_to new_user_session_url
  end

  test "should get new" do
    sign_in users(:one)
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    sign_in users(:one)
    assert_difference('Client.count') do
      post clients_url, params: { client: { email: @client.email, name: @client.name, phone: @client.phone } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    sign_in users(:one)
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    sign_in users(:one)
    patch client_url(@client), params: { client: { email: @client.email, name: @client.name, phone: @client.phone } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    sign_in users(:one)
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
