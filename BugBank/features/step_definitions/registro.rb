Dado('que eu estou na página de registro') do
    @home_page.btn_register.click
    expect(@home_page.card_register.visible?)
end

Quando('eu insiro um email válido') do
    @home_page.input_register_email
end
  
Quando('insiro um nome válido') do
    
end
  
Quando('insiro uma senha válida') do
    
end
  
Quando('insiro uma senha igual a anterior') do
    
end
  
Quando('escolho a opção {string} para conta com saldo') do |string|
    
end
  
Quando('clico no botão {string}') do |string|
    
end
  
Quando('devo ver uma mensagem de sucesso {string}') do |string|
    
end
  
Então('devo ser redirecionado para a página de login') do
    
end