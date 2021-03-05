class PaginaInicial < SitePrism::Page
    set_url ''
    element :busca, '#strBusca'
    def preencher
        busca.set 'Iphone 7'
    end
end