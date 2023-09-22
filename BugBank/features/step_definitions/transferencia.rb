# Transfer Sucess

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
    @account_page.saldo_da_conta.text.to_i > 0
end

Dado('informo o número da conta') do
    @transfer_page.load
    #@transfer_number = Faker::Number.number(digits: 2)
    #@transfer_page.account_number.set(@transfer_number)
end
  
Dado('informo o dígito') do
    #@transfer_digit = Faker::Number.number(digits: 1)
    #@transfer_page.digit.set(@transfer_digit)
end
  
Dado('informo o valor da transferência') do
    @transfer_value = Faker::Number.between(from: 1, to: 1000)
    @transfer_page.transfer_value.set(@transfer_value)
end
  
Dado('informo uma descrição') do
    @transfer_desc = Faker::Lorem.paragraph
    @transfer_page.description.set(@transfer_desc)
end
  
Quando('confirmo a transferência') do
    @transfer_page.btn_transfer.click
end
  
Então('devo ver uma mensagem de confirmação') do
    expect(@transfer_page.msg_transfer_sucess).to be_visible
    @transfer_page.btn_transfer_sucess.click
    @transfer_page.btn_back.click
end
  
Então('o saldo da minha conta deve ser atualizado corretamente') do
    @account_page.saldo_da_conta.text.to_i < 1000
    @account_page.btn_extrato.click
end
  
Então('o extrato deve registrar a transferência') do
    @extrato_page = Pages::ExtratoPage.new
    @extrato_page.load
    expect(@extrato_page.transfer_value_extrato.text).to match(/^-R\$ \d+/)
end

# Transfer Failure

Dado('que tenho uma conta com saldo insuficiente') do
    @account_page = Pages::AccountPage.new
    @account_page.load
    @account_page.saldo_da_conta.text.to_i < 0
end

Dado('informo o valor da transferência acima de mil reais') do
    @transfer_value = Faker::Number.between(from: 1001, to: 10000)
    @transfer_page.transfer_value.set(@transfer_value)
end
 
Então('devo ver uma mensagem de erro indicando saldo insuficiente') do
    expect(@transfer_page.msg_saldo_insu).to be_visible
    @transfer_page.btn_saldo_insu.click
    @transfer_page.btn_back.click
end
  
Então('o saldo da minha conta não deve ser alterado') do
    expect(@account_page.saldo_da_conta).to have_text("R$ 1.000,00")
    @account_page.btn_extrato.click
end
  
Então('o extrato não deve registrar a transferência') do
    @extrato_page = Pages::ExtratoPage.new
    @extrato_page.load
    expect(@extrato_page.text_balance).to have_text("R$ 1.000,00")
end

# Transfer Failure 2

Dado('não informo o número da conta') do
    @transfer_page.load
end
  
Dado('não informo o dígito') do
    
end
  
Dado('não informo o valor da transferência acima de mil reais') do
    
end
  
Dado('não informo uma descrição') do

end

Quando('tento confirmar a transferência') do
    @transfer_page.btn_transfer.click
end
  
Então('devo ver uma mensagem de erro indicando informações incorretas') do
    expect(@transfer_page.input_warning).to be_visible
    @account_page.load
end