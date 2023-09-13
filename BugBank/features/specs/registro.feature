#language: pt

@registro
Funcionalidade: Registro
  Sendo um possivel cliente do BugBank
  Quero poder me registrar
  Para que eu possa acessar funcionalidades de usuário registrado

    Contexto: Estar na página inicial
        Dado que esteja na página incial

    @valid_register
    Cenário: Registro bem-sucedido sem saldo
        Dado que eu estou na página de registro
        Quando eu insiro um email válido
        E insiro um nome válido
        E insiro uma senha válida
        E insiro uma senha igual a anterior
        E escolho a opção "Não" para conta com saldo
        E clico no botão "Registrar"
        E devo ver uma mensagem de sucesso "Registro concluído com sucesso!"
        Então devo ser redirecionado para a página de login

    @valid_register_saldo
    Cenário: Registro bem-sucedido com saldo
        Dado que eu estou na página de registro
        Quando eu insiro um email válido
        E insiro um nome válido
        E insiro uma senha válida
        E insiro uma senha igual a anterior
        E escolho a opção "Sim" para conta com saldo
        E clico no botão "Registrar"
        E devo ver uma mensagem de sucesso "Registro concluído com sucesso e sua conta possui saldo!"
        Então devo ser redirecionado para a página da conta