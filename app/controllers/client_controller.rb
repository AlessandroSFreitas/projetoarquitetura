class ClientController < ApplicationController
  def new
  end

  def create
    @client = Client.new(client_params)
    @client.save
  end

  def show
    @client = Client.all
  end

  def export
    events_json = []
    Client.all.each do |client|
      event_json = {
        "id" => client.id,
        "name" => client.name,
        "endereco" => client.endereco,
        "cpf" => client.cpf,
        "rg" => client.rg,
        "phone" => client.phone,
        "data_cadastro" => client.data_cadastro,
        "data_cancelamento" => client.data_cancelamento,
        "debito" => client.debito
      }
      events_json << event_json
    end
    File.open("C:/Users/aless/Desktop/arquitetura/clientes.json","w") do |f|
      f.write(events_json.to_json)
    end
  end

  private

  def client_params
    params.require(:client).permit(:name, :endereco, :cpf, :rg, :phone, :data_cadastro, :data_cancelamento, :debito)
  end

end
