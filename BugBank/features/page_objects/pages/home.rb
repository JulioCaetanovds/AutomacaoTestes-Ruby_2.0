module Pages

  class Home < SitePrism::Page
      set_url '/'
      element :btn_register, '.ihdmxA'
      element :input_register_email, '.card__register input[name="email"]'
      element :input_register_name, '.card__register input[name="name"]'
      element :input_register_senha, '.card__register input[name="password"]'
      element :input_register_confsenha, '.card__register input[name="passwordConfirmation"]'
      element :btn_saldo, '.styles__Container-sc-1pngcbh-0.kIwoPV'
      element :btn_cadastrar, '.CMabB'
      element :msg_register_sucess, '#modalText'
      element :btn_close_modal, '#btnCloseModal'

      element :card_register, '.card__register'

      element :input_login_email, '.card__login input[name="email"]'
      element :input_login_senha, '.card__login input[type="password"]'
      element :btn_acess, '.otUnI'
  end
end