Dado('que esteja na página incial') do
    @home_page = Pages::Home.new
    @home_page.load
end

Quando('realizar o login com usuário válido') do

end

Então('devo ser logado com sucesso') do
    expect(page).to have_content("bem vindo ao BugBank :)")
end