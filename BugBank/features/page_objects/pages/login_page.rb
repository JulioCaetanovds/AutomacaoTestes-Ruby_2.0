module Pages

    class LoginPage < SitePrism::Page
        set_url '/login'
        element :btn_registration, '.ihdmxA'

        element :input_login_email, 'input[name="email"]'
        element :input_login_password, 'input[type="password"]'
        element :btn_acess, '.otUnI'
    end
end