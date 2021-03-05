E('clico no botão comprar') do  
    browser = Capybara.current_session.driver.browser
    browser.manage.delete_all_cookies                                         
    find_element(:xpath, "//button[@class='css-afz1ur e1g7zzz30']").click

end                                                                          
                                                                               
Então('eu verifico se foi escolhido o produto correto') do                   
   sleep 30
end                                                                          