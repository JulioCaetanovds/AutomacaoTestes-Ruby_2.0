Dado('que esteja na página incial') do
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
end

Quando('realizar o login com usuário válido') do
  @home_page.load
  @home_page.input_login_email.set(@registration_email)
  @home_page.input_login_senha.set(@registration_password)
  @home_page.btn_acess.click
end

Então('devo ser logado com sucesso') do
  expect(page).to have_content("bem vindo ao BugBank :)")
end

Quando('realizo o login com e-mail inválido') do
  @home_page.load
  @home_page.input_login_email.set('email_invalido$example.com')
  @home_page.input_login_senha.set('123456')
  @home_page.btn_acess.click
end
  
Então('devo ver uma mensagem de erro informando que o e-mail é inválido') do
  expect(@home_page.msg_login_email_invalid.text).to eq('Formato inválido')
end
  
Quando('realizo o login com senha inválida') do
  @home_page.load
  @home_page.input_login_email.set('email_valido@example.com')
  @home_page.input_login_senha.set('')
  @home_page.btn_acess.click
end
  
Então('devo ver uma mensagem de erro informando que a senha é inválida') do
  expect(@home_page.msg_login_senha_invalid.text).to eq('É campo obrigatório')
end

Quando('deixa o login com usuário e senha vazios') do
  @home_page.load
  @home_page.input_login_email.set('')
  @home_page.input_login_senha.set('')
  @home_page.btn_acess.click
end
  
Então('exibe a mensagem para campo obrigatório') do
  expect(@home_page.msg_login_senha_invalid.text).to eq('É campo obrigatório')
end

Quando('aperta o botão de sair') do
  @home_page.btn_exit.click
end
  
Quando('volta para home como usuário não logado no sistema') do
  expect(page).to have_content("O banco com bugs e falhas do seu jeito")
end

Quando('clicar no botão Conheça nossos requisitos') do
  @home_page.btn_requirements.click
  @requirements_page = Pages::RequirementsPage.new
  @requirements_page.load
end

Então('deverá ser direcionado para a página de requisitos') do
  expect(current_url).to eq('https://bugbank.netlify.app//requirements')
end