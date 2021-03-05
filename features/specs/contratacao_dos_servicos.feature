#language: pt

@contratacao_servicos
Funcionalidade: Contratar serviçõs

Cenario: Contratar serviços de Fique Seguro e Garantia Estendida
Dado acesso a url
Quando eu verifico se estou na página correta
E realizo a busca do produto
E clico no produto desejado
Então eu verifico se foi realizado a busca do produto
E clico no botão comprar
Então eu verifico se foi escolhido o produto correto
Quando eu estou na página de contratacao_servicos
Então posso escolher os serviços de Fique Seguro e Garantia Estendida