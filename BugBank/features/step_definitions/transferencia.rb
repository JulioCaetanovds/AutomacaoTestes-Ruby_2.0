Dado('que faço login na minha conta BugBank') do
    @home_page.load
    @home_page.input_login_email.set(@registration_email)
    @home_page.input_login_senha.set(@registration_password)
    @home_page.btn_acess.click
end
  
Dado('entro na página de transferência') do
    @transfer_page = Pages::TransferPage.new
    @transfer_page.load
end
  
Dado('que tenho uma conta com saldo suficiente') do
    @account_page = Pages::AccountPage.new
    @account_page.load
    @account_page.text.to_i > 0
end

Dado('informo os detalhes corretos para a transferência') do
    
end
  
Quando('confirmo a transferência') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('devo ver uma mensagem de confirmação') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('o saldo da minha conta deve ser atualizado corretamente') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('o extrato deve registrar a transferência') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Dado('que tenho uma conta com saldo insuficiente') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('devo ver uma mensagem de erro indicando saldo insuficiente') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('o saldo da minha conta não deve ser alterado') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('o extrato não deve registrar a transferência') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Dado('informo informações incorretas para a transferência') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('devo ver uma mensagem de erro indicando informações incorretas') do
    pending # Write code here that turns the phrase above into concrete actions
end