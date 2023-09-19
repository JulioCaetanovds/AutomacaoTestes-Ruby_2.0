Dado('que eu estou na página de registro') do
  @home_page.load
  @home_page.btn_register.click
  expect(@home_page.card_register).to be_visible
end

Quando('eu insiro um email válido') do
  @registration_email = Faker::Internet.email
  @home_page.input_register_email.set(@registration_email)
end

Quando('insiro um nome válido') do
  @registration_name = Faker::Name.name
  @home_page.input_register_name.set(@registration_name)
end

Quando('insiro uma senha válida') do
  @registration_password = Faker::Internet.password(min_length: 8)
  @home_page.input_register_senha.set(@registration_password)
end

Quando('insiro uma senha igual a anterior') do
  password = @home_page.input_register_senha.value
  @home_page.input_register_confsenha.set(@registration_password)
end

Quando('não escolho a opção para conta com saldo') do

end

Quando('clico no botão registrar') do
  @home_page.btn_cadastrar.click
end

Quando('devo ver uma mensagem de sucesso Registro concluído com sucesso!') do
  expect(@home_page.msg_register_sucess).to be_visible
  @home_page.btn_close_modal.click
end

Então('devo ser redirecionado para a página de login') do
  expect(current_path).to eq('//')
end

# Para resgitrar uma conta com saldo

Quando('escolho a opção para conta com saldo') do
  @home_page.btn_saldo.click
end

Quando('devo ver uma mensagem de sucesso Registro concluído com sucesso e sua conta possui saldo!') do
  expect(@home_page.msg_register_sucess).to be_visible
  @home_page.btn_close_modal.click
end

Então('devo ser redirecionado para a página da conta') do
  expect(current_path).to eq('//')
end