Dado('que esteja na página da conta') do
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
    @account_page = Pages::AccountPage.new
    @account_page.load
end
  
Quando('acessar o botão de transferências') do
    @account_page.btn_transfer_acces.click
end
  
Então('o sistema deverá ser direcionado para página de transferências') do
    @transfer_page = Pages::TransferPage.new
    @transfer_page.load
    expect(@transfer_page).to have_text_transfer
end
  
Quando('acessar o botão de extratos') do
    @account_page.btn_extrato.click
end
  
Então('o sistema deverá ser direcionado para página de extratos') do
    @extrato_page = Pages::ExtratoPage.new
    @extrato_page.load
    expect(@extrato_page).to have_text_balance
end
  
Quando('acessar o botão de pagamentos') do
    @account_page.btn_pagamento_acess.click
end
  
Então('o sistema deverá mostrar mensagem Funcionalidade em desenvolvimento') do
    expect(@account_page).to have_msg_funcionalidade_desenvolvimento
end
  
Quando('acessar o botão de saque') do
    @account_page.btn_saque_acess.click
end