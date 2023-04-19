class CurrenciesController < ApplicationController

  def list__initial_currencies

    @raw_data = open("https://api.exchangerate.host/symbols").read
    @raw_data_hash = JSON.parse(@raw_data)
    @currencies_hash = @raw_data_hash.fetch("symbols")
    @currency_abbreviations_array = @currencies_hash.keys

    render({:template => "currency_templates/initial_currency_list.html.erb"})
  end

  def list_target_currencies
    @initial_currency = params.fetch("initial_currency")

    @raw_data = open("https://api.exchangerate.host/symbols").read
    @raw_data_hash = JSON.parse(@raw_data)
    @currencies_hash = @raw_data_hash.fetch("symbols")
    @currency_abbreviations_array = @currencies_hash.keys

    render({:template => "currency_templates/target_currency_list.html.erb"})
  end

  def convert
    @initial_currency = params.fetch("initial_currency")
    @target_currency = params.fetch("target_currency")

    @raw_data = open("https://api.exchangerate.host/convert?from=#{@initial_currency}&to=#{@target_currency}").read
    @parsed_data = JSON.parse(@raw_data)
    @rate = @parsed_data.fetch("result")
    @target_amount = 1*@rate


    render({:template => "currency_templates/conversion_page.html.erb"})
  end
    
end
