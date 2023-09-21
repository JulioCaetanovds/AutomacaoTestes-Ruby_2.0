module Pages

    class AccountPage < SitePrism::Page
        set_url '/home'
        
        element :saldo_da_conta, '#textBalance span'
        element :btn_extrato, '#btn-EXTRATO'
        element :btn_transfer_acces, '#btn-TRANSFERÊNCIA'
        element :btn_pagamento_acess, '#btn-PAGAMENTOS'
        element :btn_saque_acess, '#btn-SAQUE'
        element :msg_funcionalidade_desenvolvimento, '.cSdWPv'
    end
end