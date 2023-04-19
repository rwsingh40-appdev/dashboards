class CurrenciesController < ApplicationController

  def list__initial_currencies

    render({:template => "currency_templates/initial_currency_list.html.erb"})
  end

  def list_target_currencies
    render({:template => "currency_templates/target_currency_list.html.erb"})
  end

  def convert
    render({:template => "currency_templates/conversion_page.html.erb"})
  end
    
end
