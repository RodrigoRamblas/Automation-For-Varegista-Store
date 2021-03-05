class BuscarProduto < SitePrism::Page
    #set_url '/Iphone-7/b'
    element :iphone_7, :xpath, "//li[@class='ProductCard__Wrapper-sc-2vuvzo-6 iWpyBK'][1]"
    def escolher_produto
        iphone_7.click
    end
end