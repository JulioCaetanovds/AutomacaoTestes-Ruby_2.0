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
    Esquema do Cenário: Login convencional inválido
        Quando realiza o login com usuário "<usuario>" e senha "<senha>"
        Então abre um popup com a mensagem "<mensagem>" para login inválido
        Exemplos:
        |usuario          |senha            |mensagem                                                                |
        |valid_user_data  |invalid_user_data|Usuário ou senha inválido.Tente novamente ou verifique suas informações!|
        |invalid_user_data|valid_user_data  |Usuário ou senha inválido.Tente novamente ou verifique suas informações!|

    @empty_login
    Cenário: Login com campos vazios
        Quando deixa o login com usuário e senha vazios
        Então exibe a mensagem para campo obrigatório

    @redirect_to_register
    Cenário: Redirecionamento para página de cadastro
        Quando acessa a funcionalidade para criação de nova conta
        Então é redirecionado para página de cadastro

    @logout
    Cenário: Logout
        E está logado no sistema
        Quando aperta o botão de sair
        Então volta para home como usuário não logado no sistema