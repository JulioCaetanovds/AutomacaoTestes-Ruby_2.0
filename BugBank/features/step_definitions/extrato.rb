Dado('que esteja na página de extrato') do
    @home_page = Pages::Home.new
    @home_page.load
    steps %{
      Dado que eu estou na página de registro
      Quando eu insiro um email válido
      E insiro um nome válido
      E insiro uma senha válida
      E insiro uma senha igual a anterior
      E escolho a opção para conta com saldo
      E clico no botão registrar
      E devo ver uma mensagem de sucesso Registro concluído com sucesso e sua conta possui saldo!
      Então devo ser redirecionado para a página da conta
    }
    @home_page.load
    @home_page.input_login_email.set(@registration_email)
    @home_page.input_login_senha.set(@registration_password)
    @home_page.btn_acess.click
    @extrato_page = Pages::ExtratoPage.new
    @extrato_page.load
end

Então('deverá ser apresentada saldo atual da conta') do
    @extrato_page = Pages::ExtratoPage.new
    @extrato_page.load
    expect(@extrato_page).to have_text_balance
end

Então('deverá ser apresentada os registros de movimentação da conta') do
    expect(@extrato_page).to have_transactions
end