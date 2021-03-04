class ComprarIphone7< SitePrism::Page
    set_url '/TelefoneseCelulares/Smartphones/iPhone/apple-iphone-7-tela-lcd-retina-hd-47-ios-13-32-gb-preto-matte-11526479.html?IdSku=11526479'
    element :comprar, '#buy-box'
    def comprar
        comprar.click
    end
end