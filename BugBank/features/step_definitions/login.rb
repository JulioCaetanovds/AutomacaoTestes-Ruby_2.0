Dado('que esteja na página incial') do
    @home_page = Pages::Home.new
    @home_page.load
end

Quando('realizar o login com usuário válido') do
    @home_page.input_login_email.set(@registration_email)
    @home_page.input_login_senha.set(@registration_password)
    @home_page.btn_acess.click
end

Então('devo ser logado com sucesso') do
    expect(page).to have_content("bem vindo ao BugBank :)")
end