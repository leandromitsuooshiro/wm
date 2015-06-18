Dado(/^endereço da API para consultar CEP$/) do
  @api = 'http://cep.correiocontrol.com.br/'
end

Quando(/^envio o CEP válido "([^"]*)" para consulta$/) do |cep|
  @response = HTTParty.get(@api + cep + '.json')
end

Então(/^sistema irá retornar o status OK 200$/) do
  expect(@response.code).to eq(200)
end

Então(/^será exibido o bairro "([^"]*)"$/) do |bairro|
  expect(@response.parse_response["bairro"]).to eq(bairro)
end

Então(/^será exibido o logradouro "([^"]*)"$/) do |logradouro|
  expect(@response.parse_response["logradouro"]).to eq(logradouro)
end

Então(/^será exibido o CEP "([^"]*)"$/) do |cep|
  expect(@response.parse_response["cep"]).to eq(cep)
end

Então(/^será exibido o UF "([^"]*)"$/) do |uf|
  expect(@response.parse_response["uf"]).to eq(uf)
end

Então(/^será exibido a localidade "([^"]*)"$/) do |localidade|
  expect(@response.parse_response["localidade"]).to eq(localidade)
end


