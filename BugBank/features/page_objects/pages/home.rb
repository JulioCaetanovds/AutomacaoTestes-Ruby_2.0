module Pages

  class Home < SitePrism::Page
      set_url '/'
      element :btn_register, '.ihdmxA'
      element :input_register_email, '.card__register input[name="email"]'
      element :input_register_name, '.card__register input[name="name"]'
      element :input_register_senha, '.card__register input[name="password"]'
      element :input_register_confsenha, '.card__register input[name="passwordConfirmation"]'
      element :btn_saldo, '#toggleAddBalance'
      element :btn_cadastrar, '.CMabB'

      element :card_register, '.card__register'

      element :input_login_email, '.card__login input[name="email"]'
      element :input_login_senha, '.card__login input[type="password"]'
      element :btn_acess, '.otUnI'
  end
end