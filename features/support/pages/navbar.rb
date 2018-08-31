class Navbar < SitePrism::Page 
    element :menu_usuario,'a[href*=dropdown]'
    element :link_sair,'a[href$=logout]'

    def logout
        menu_usuario.click
        link_sair.click
    end
end