#language:pt

@sprint3
Funcionalidade: Remover uma tarefa
    Para que eu possa deixar meu painel organizado
    Sendo um usuário que possui uma tarefa indesejada
    Posso excluir esta tarefa

    @login @logout
    Cenario: Apagar uma tarefa

        Dado que eu tenho uma tarefa indesejada
        Quando eu solicito a exclusão desta tarefa
        E confirmo esta solicitação
        Então esta tarefa não deve ser exibida na lista

    @login @logout
    Cenario: Desistir da exclusao

        Dado que eu tenho uma tarefa indesejada
        Quando eu solicito a exclusão desta tarefa
        Mas desisto da confirmação
        Então esta tarefa deve permanecer na lista