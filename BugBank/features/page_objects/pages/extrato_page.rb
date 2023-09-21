module Pages

    class ExtratoPage < SitePrism::Page
        set_url '/bank-statement'

        element :transfer_value_extrato, '.gvXfbP'
        element :text_balance, '.kvWMGO'
        element :transactions, '.fUCxBP'
    end
end