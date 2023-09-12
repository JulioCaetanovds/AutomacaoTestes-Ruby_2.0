require 'capybara/dsl'

class Home
  include Capybara::DSL

  def load
    visit('https://bugbank.netlify.app')
  end
end