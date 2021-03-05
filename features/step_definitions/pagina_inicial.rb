Quando('acesso a url') do
    home.load
    home.preencher
end
  
Então('eu verifico se estou na página correta') do
    expect(page).to have_current_path('https://www.casasbahia.com.br', url:true)
end