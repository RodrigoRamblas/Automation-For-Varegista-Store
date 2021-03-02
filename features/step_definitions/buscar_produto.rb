Quando('realizo a busca do produto') do
    fill_in(id: 'strBusca', with: 'Iphone 10')
    find('#strBusca').send_keys(:enter)
    sleep 5
end
  
