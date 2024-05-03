Rails.application.routes.draw do 
  get("/square/new", { :controller => "calc", :action => "square_new" }) 

  get("/square/root", { :controller => "calc", :action => "square_root" })

  get("/new/payment", { :controller => "calc", :action => "new_payment" }) 

  get("/new/random", { :controller => "calc", :action => "new_random" }) 
  
  get("/payment/results", { :controller => "calc", :action => "payment_results" }) 

  get("/square_root/results", { :controller => "calc", :action => "square_results" }) 

  get("/square_new/results", { :controller => "calc", :action => "new_square" }) 

  get("/home", { :controller => "calc", :action => "home" }) 
end
