class ContratacaoDosServicos < SitePrism::Page
    set_url 'https://carrinho.casasbahia.com.br/Servicos/55014843/10037/1/?origem=PD'
    
    element :sem_fique_seguro, :xpath "//div[@class='column-2']/div[@class='price-card']/label[@class='customized-radio']"
    element :roubo_e_furto_mais_12_meses, :xpath "//div[@class='column-3']/div[@class='price-card selected']/label[@class='customized-radio']"
    element :roubo_e_furto_mais_24_meses, :xpath "//div[@class='column-3']/div[@class='price-card']/label[@class='customized-radio']"
    element :quebra_acidental_mais_12_meses, :xpath "//div[@class='column-4']/div[@class='price-card selected']/label[@class='customized-radio']"
    element :quebra_acidental_mais_24_meses, :xpath "//div[@class='column-4']/div[@class='price-card']/label[@class='customized-radio']"
    element :roubo_e_furto_qualificado_mais_quebra_acidental_mais_12_meses, :xpath "//div[@class='column-5']/div[@class='price-card'][1]/label[@class='customized-radio']"
    element :roubo_e_furto_qualificado_mais_quebra_acidental_mais_24_meses, :xpath "//div[@class='column-5']/div[@class='price-card'][2]/label[@class='customized-radio']"
    element :sem_garantia_estendida, :xpath "//section[@class='cards']/div[@class='price-card selected']/label[@class='customized-radio']"
    element :garantia_estendida_mais_12_meses, :xpath "//div[@class='price-card plan-box option-012']/label[@class='customized-radio']"
    element :garantia_estendida_mais_24_meses, :xpath "//section[@class='cards']/div[@class='price-card plan-box option-024']/label[@class='customized-radio']"
    element :garantia_estendida_mais_36_meses, :xpath "//div[@class='price-card plan-box option-036 ']/label[@class='customized-radio']"
    element :continuar, :xpath "//button[@class='decline-button']"

    def sem_fique_seguro
        sem_fique_seguro.click
    end 

    def roubo_e_furto_mais_12_meses
        roubo_e_furto_mais_12_meses.click
    end

    def roubo_e_furto_mais_24_meses
        roubo_e_furto_mais_24_meses.click
    end

    def quebra_acidental_mais_12_meses
        quebra_acidental_mais_12_meses.click
    end

    def quebra_acidental_mais_24_meses
        quebra_acidental_mais_24_meses.click
    end

    def roubo_e_furto_qualificado_mais_quebra_acidental_mais_12_meses
        roubo_e_furto_qualificado_mais_quebra_acidental_mais_12_meses.click
    end

    def roubo_e_furto_qualificado_mais_quebra_acidental_mais_24_meses
        roubo_e_furto_qualificado_mais_quebra_acidental_mais_24_meses.click
    end

    def sem_garantia_estendida
        sem_garantia_estendida.click
    end

    def garantia_estendida_mais_12_meses
        garantia_estendida_mais_12_meses.click
    end

    def garantia_estendida_mais_24_meses
        garantia_estendida_mais_24_meses.click
    end

    def garantia_estendida_mais_36_meses
        garantia_estendida_mais_36_meses.click
    end

    def continuar
        continuar.click
    end

end
