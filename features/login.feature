#language: pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados.

    Contexto: Home
    Dado que eu acessei o sistema

    @smoke @logout
    Cenario: Usuário autenticado
        Quando faço login com "julianadornelas1972@gmail.com" e "123456"
        Então vejo a seguinte mensagem "Olá, Juliana"
    
    @tentativa  
    Esquema do Cenário: Tentar logar
    Quando faço login com "<email>" e "<senha>"
    Então vejo a seguinte mensagem de alerta "<saida>"

    Exemplos:
      | email        | senha  | saida                       |
      | eu@papito.io | 111111 | Senha inválida.             |
      | eu@404.io    | 123456 | Usuário não cadastrado.     |
      |              | 123456 | Email incorreto ou ausente. |
      | eu#papito.io | 123456 | Email incorreto ou ausente. |
