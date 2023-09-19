module Pages

    class TransferPage < SitePrism::Page
        set_url '/transfer'

        element :account_number, 'input[name="accountNumber"]'
        element :digit, 'input[name="digit"]'
        element :transfer_value, 'input[name="transferValue"]'
        element :description, 'input[name="description"]'
    end
end