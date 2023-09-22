#language: pt

@regression
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
    E informo o número da conta
    E informo o dígito
    E informo o valor da transferência
    E informo uma descrição
    Quando confirmo a transferência
    Então devo ver uma mensagem de confirmação
    E o saldo da minha conta deve ser atualizado corretamente
    E o extrato deve registrar a transferência

  @transfer_failure
  Cenário: Falha na transferência por saldo insuficiente
    Dado que tenho uma conta com saldo insuficiente
    E informo o número da conta
    E informo o dígito
    E informo o valor da transferência acima de mil reais
    E informo uma descrição
    Quando confirmo a transferência
    Então devo ver uma mensagem de erro indicando saldo insuficiente
    E o saldo da minha conta não deve ser alterado
    E o extrato não deve registrar a transferência

  @transfer_failure2
  Cenário: Falha na transferência devido a informações incorretas
    Dado que tenho uma conta com saldo suficiente
    E não informo o número da conta
    E não informo o dígito
    E não informo o valor da transferência acima de mil reais
    E não informo uma descrição
    Quando tento confirmar a transferência 
    Então devo ver uma mensagem de erro indicando informações incorretas
    E o saldo da minha conta não deve ser alterado
    E o extrato não deve registrar a transferência
