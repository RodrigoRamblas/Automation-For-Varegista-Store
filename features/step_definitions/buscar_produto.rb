Quando('realizo a busca do produto') do
    browser = Capybara.current_session.driver.browser
    browser.manage.delete_all_cookies
    @home = PaginaInicial.new
    home.load
    home.preencher
    find('#strBusca').send_keys(:enter)
end

E('clico no produto desejado') do
    browser = Capybara.current_session.driver.browser
    browser.manage.delete_all_cookies
    first('.ProductCard__Wrapper-sc-2vuvzo-6').click
end
  
Então('eu verifico se foi realizado a busca do produto') do
    expect(page).to have_current_path('https://www.casasbahia.com.br/TelefoneseCelulares/Smartphones/iPhone/apple-iphone-7-tela-lcd-retina-hd-47-ios-13-32-gb-preto-matte-11526479.html?IdSku=11526479', url:true)
end