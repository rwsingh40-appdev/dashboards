Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/",{:controller => "application", :action => "homepage"})

  get("/forex",{:controller => "currencies", :action => "list__initial_currencies"})
  get("/forex/:initial_currency",{:controller => "currencies", :action => "list_target_currencies"})
  get("/forex/:initial_currency/:target_currency",{:controller => "currencies", :action => "convert"})

  #get("/covid",{:controller => "covid", :action => "data"})

end
