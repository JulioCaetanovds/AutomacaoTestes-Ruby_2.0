#language: pt

@transferencia
Funcionalidade: Transferência e Extrato
    SENDO um cliente do BugBank
    QUERO poder realizar transferências
    PARA realizar uma transferência

    Contexto: estar na página de transferência
        Dado que esteja na página incial
        E que faço login na minha conta BugBank
        E entro na página de transferência

  @transfer_sucess
  Cenário: Transferência bem-sucedida
    Dado que tenho uma conta com saldo suficiente
    E informo os detalhes corretos para a transferência
    Quando confirmo a transferência
    Então devo ver uma mensagem de confirmação
    E o saldo da minha conta deve ser atualizado corretamente
    E o extrato deve registrar a transferência

  Cenário: Falha na transferência por saldo insuficiente
    Dado que tenho uma conta com saldo insuficiente
    E informo os detalhes corretos para a transferência
    Quando confirmo a transferência
    Então devo ver uma mensagem de erro indicando saldo insuficiente
    E o saldo da minha conta não deve ser alterado
    E o extrato não deve registrar a transferência

  Cenário: Falha na transferência devido a informações incorretas
    Dado que tenho uma conta com saldo suficiente
    E informo informações incorretas para a transferência
    Quando confirmo a transferência
    Então devo ver uma mensagem de erro indicando informações incorretas
    E o saldo da minha conta não deve ser alterado
    E o extrato não deve registrar a transferência
