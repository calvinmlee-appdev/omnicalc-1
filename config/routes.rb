Rails.application.routes.draw do

  get("/square/new", { :controller => "application", :action => "blank_square_form"})

  get("/square/results", { :controller => "application", :action => "calculate_square"})

  get("/random/results", { :controller => "application", :action => "calculate_random"})

  get("/random/new", { :controller => "application", :action => "blank_random_form"})

  get("/squareroot/results", { :controller => "application", :action => "calculate_squareroot"})

  get("/squareroot/new", { :controller => "application", :action => "blank_squareroot_form"})

  get("/payment/results", { :controller => "application", :action => "calculate_payment"})

  get("/payment/new", { :controller => "application", :action => "blank_payment_form"})
end
