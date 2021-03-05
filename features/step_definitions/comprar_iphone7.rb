E('clico no botão comprar') do 
    expect(page).to have_current_path('https://m.casasbahia.com.br/iphone-xr-apple-64gb-preto-tela-de-6-1-camera-de-12mp-ios-55014843.html?IdSku=55014843', url:true) 
    browser = Capybara.current_session.driver.browser
    browser.manage.delete_all_cookies                                         
    find_element(:xpath, "//button[@class='css-afz1ur e1g7zzz30']").click

end                                                                          
                                                                               
Então('eu verifico se foi escolhido o produto correto') do                   
    expect(page).to have_css('.css-1pnb2jm.eym5xli0', text: 'Apple iPhone 7 Tela LCD Retina HD 4,7” iOS 13 32 GB - Preto Matte')
end                                                                          