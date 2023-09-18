#language: pt

@login
Funcionalidade: Login
    SENDO um cliente do BugBank
    QUERO poder logar
    PARA poder acessar as funcionalidades de usuário logado

    Contexto: Estar na página inicial
        Dado que esteja na página incial

    @valid_login
    Cenário: Login válido
        Quando realizar o login com usuário válido
        Então devo ser logado com sucesso

    @invalid_login
    @invalid_login_email
    Cenário: Tentativa de login com e-mail inválido
        Quando realizo o login com e-mail inválido
        Então devo ver uma mensagem de erro informando que o e-mail é inválido

    @invalid_login_password
    Cenário: Tentativa de login com senha inválida
        Quando realizo o login com senha inválida
        Então devo ver uma mensagem de erro informando que a senha é inválida

    @empty_login
    Cenário: Login com campos vazios
        Quando deixa o login com usuário e senha vazios
        Então exibe a mensagem para campo obrigatório

    @logout
    Cenário: Logout
        Dado que esteja na página incial
        Quando realizar o login com usuário válido
        E devo ser logado com sucesso
        E aperta o botão de sair
        E volta para home como usuário não logado no sistema