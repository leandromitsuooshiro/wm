# language: pt

Funcionalidade: CEP Correios

Cenário: Pesquisar CEP válido
	Dado endereço da API para consultar CEP
	Quando envio o CEP válido "06065420" para consulta 
	Então sistema irá retornar o status OK 200git
	E será exibido o bairro "Jardim Cipava"
	E será exibido o logradouro "Rua Vasco da Gama"
	E será exibido o CEP "06065420"
	E será exibido o UF "SP"
	E será exibido a localidade "Osasco"
