Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }

module PageObjects

    def home
        @home ||= PaginaInicial.new
    end

    def buscar
        @buscar ||= PaginaInicial.new
    end

end