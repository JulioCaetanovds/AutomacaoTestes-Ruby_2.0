module Pages

    class AccountPage < SitePrism::Page
        set_url '/home'
        
        element :saldo_da_conta, '#textBalance span'
    end
end