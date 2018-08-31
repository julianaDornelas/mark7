#language: pt

@sprint2 
Funcionalidade: Cadastrar tarefas
    Para que eu possa organizar minhas atividades
    Sendo um usuário cadastrado
    Posso cadastrar novas tarefas

   @nova @logout @login
   Cenario: Nova tarefa

        Dado que eu tenho uma tarefa com os seguintes atributos:
            | nome | Fazer Compras |
            | data | 25/06/2018    |
        E eu quero taguear esta tarefa com:
            | tag          |
            | supermercado |
            | ketchup      |
            | compras      |
        Quando faço o cadastro dessa tarefa
        Então devo ver está tarefa com o status "Em andamento"
        E devo ver somente 1 tarefa com o nome cadastrado

    @login @dup @logout
    Cenario: Duplicado

            Dado que eu tenho uma tarefa com os seguintes atributos:
                | nome | Fazer Compras |
                | data | 25/06/2018    |
            E eu quero taguear esta tarefa com:
                | tag          |
                | supermercado |
                | ketchup      |
                | compras      |
            Mas eu já cadastrei esta tarefa e não tinha percebido 
            Quando faço o cadastro dessa tarefa
            Então devo ver "Tarefa duplicada" como mensagem de alerta
            E devo ver somente 1 tarefa com o nome cadastrado

     @login @nome_curto @logout
    Cenario: Nome Curto

            Dado que eu tenho uma tarefa com os seguintes atributos:
                | nome | Abcdefghi     |
                | data | 25/07/2018    |
            E eu quero taguear esta tarefa com:
                | tag          |
                | mongo        |
            Quando faço o cadastro dessa tarefa
            Então devo ver "10 caracteres é o mínimo permitido." como mensagem de alerta
        