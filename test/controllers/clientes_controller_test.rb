require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post :create, cliente: { bairro: @cliente.bairro, cep: @cliente.cep, cidade: @cliente.cidade, cpf: @cliente.cpf, email: @cliente.email, estado: @cliente.estado, nome: @cliente.nome, numero: @cliente.numero, rua: @cliente.rua }
    end

    assert_response 201
  end

  test "should show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "should update cliente" do
    put :update, id: @cliente, cliente: { bairro: @cliente.bairro, cep: @cliente.cep, cidade: @cliente.cidade, cpf: @cliente.cpf, email: @cliente.email, estado: @cliente.estado, nome: @cliente.nome, numero: @cliente.numero, rua: @cliente.rua }
    assert_response 204
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_response 204
  end
end
