#language: pt

@regression
@extrato
Funcionalidade: Extrato
    SENDO um cliente do BugBank
    QUERO conferir extratos
    PARA poder ter controle das entradas e saídas da conta

    Contexto: Estar na página de Extrato
        Dado que esteja na página de extrato 

    Cenário: Validar visualização de saldo atual
        Então deverá ser apresentada saldo atual da conta

    Cenário: Validar visualização registros de movimentação
        Então deverá ser apresentada os registros de movimentação da conta