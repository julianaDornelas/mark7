class LoginPage < SitePrism::Page
    set_url '/login'
    element :formulario, '#login_form'
    element :campo_email, '#login_email'
    element :campo_senha, 'input[name=password]'
    element :botao_entrar, 'button[id*=btnLogin]'
    element :alerta, '.alert-login'

    def logar(email, senha)
     campo_email.set email
     campo_senha.set senha
     botao_entrar.click
    end
end
    