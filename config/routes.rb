Rails.application.routes.draw do 
  get("/square/new", { :controller => "calc", :action => "square" }) 

  get("/square_root/new", { :controller => "calc", :action => "square_root" })

  get("/payment/new", { :controller => "calc", :action => "payment_form" }) 

  get("/random/new", { :controller => "calc", :action => "random" }) 

  get("/new_random/results", { :controller => "calc", :action => "random_results" }) 

  get("/payment/results", { :controller => "calc", :action => "payment_results" }) 

  get("/square_root/results", { :controller => "calc", :action => "square_root_results" }) 

  get("/square_new/results", { :controller => "calc", :action => "square_new_results" }) 

  get("/home", { :controller => "calc", :action => "home" }) 
end
