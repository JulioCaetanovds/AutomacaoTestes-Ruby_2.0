Dado('que esteja na página incial') do
    visit "https://bugbank.netlify.app"
end
  
Quando('realizar o login com usuário válido') do

end

Então('devo ser logado com sucesso') do
    expect(page).to have_content("bem vindo ao BugBank :)")
end