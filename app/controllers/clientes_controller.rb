class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :update, :destroy]

  # GET /clientes
  # GET /clientes.json
  def index
    @clientes = Cliente.all

    render json: @clientes
  end

  # GET /clientes/1
  # GET /clientes/1.json
  def show
    render json: @cliente
  end

  # POST /clientes
  # POST /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)

    if @cliente.save
      render json: @cliente, status: :created, location: @cliente
    else
      render json: @cliente.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clientes/1
  # PATCH/PUT /clientes/1.json
  def update
    @cliente = Cliente.find(params[:id])

    if @cliente.update(cliente_params)
      head :no_content
    else
      render json: @cliente.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    @cliente.destroy

    head :no_content
  end

  private

    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    def cliente_params
      params.require(:cliente).permit(:nome, :cpf, :email, :rua, :numero, :bairro, :cidade, :estado, :cep)
    end
end
