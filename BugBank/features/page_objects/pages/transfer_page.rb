module Pages

    class TransferPage < SitePrism::Page
        set_url '/transfer'

        element :account_number, 'input[name="accountNumber"]'
        element :digit, 'input[name="digit"]'
        element :transfer_value, 'input[name="transferValue"]'
        element :description, 'input[name="description"]'
        element :btn_transfer, '.CMabB'
        element :msg_transfer_sucess, '.gpcLtj'
        element :btn_transfer_sucess, '.gyHUvN'
        element :btn_back, '.gWmJSZ'
        element :text_transfer, '.eUFZOb'

        element :msg_saldo_insu, '.gpcLtj'
        element :btn_saldo_insu, '.gyHUvN'

        element :input_warning, '.kOeYBn p[class="input__warging"]'
    end
end