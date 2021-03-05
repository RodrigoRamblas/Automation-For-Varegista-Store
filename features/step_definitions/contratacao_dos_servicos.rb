
Quando('eu estou na página de contratacao_servicos') do
    expect(page).to have_current_path('https://carrinho.casasbahia.com.br/Servicos/11526479/10037/1/?origem=PD', url:true)
end
  
Então('posso escolher os serviços de Fique Seguro e Garantia Estendida') do
    contratacao.roubo_e_furto_mais_12_meses
    contratacao.garantia_estendida_mais_36_meses
    contratacao.continuar
end