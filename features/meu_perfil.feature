#language:pt

Funcionalidade: Meu perfil
    Para que eu possa ter os meus dados cadastrais atualizados
    Sendo um usuário cadastrado
    Posso completar o meu cadastrado

    @login
    Cenario: Completar cadastro

        Dado que acesso o meu perfil
        Quando completo o meu cadastro com:
            | empresa | Apple |
            | cargo   | CEO   |
        Então vejo uma mensagem de sucesso:
        """
        Perfil atualizado com sucesso.
        """