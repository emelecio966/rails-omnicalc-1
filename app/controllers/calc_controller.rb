class  CalcController < ApplicationController 
  def square
    render({ :template => "calc_templates/square_form" })
  end 

  def square_root 
    render({ :template => "calc_templates/square_root_form" })
  end 

  def payment 
   render({ :template => "calc_templates/payment_form" })
  end  

  def random 
   render({ :template => "calc_templates/new_random" })
  end

  def square_results 
   @number = params.fetch("number").to_f 

   @result = @number ** 2.0 

   render({ :template => "calc_template/square_results" })
  end 

  def payment_results 
    @apr = params.fetch("apr").to_f 
    @yrs_remain = params.fetch("yrs_remain").to_f
    @present_value = params.fetch("present_value").to_f
   
    @r =(@apr / 100.0) /12.0
    @n = @yrs_remain * 12.0
  
    @numerator = (@r * @present_value)
    @denom = (1.0 - ((1.0 + @r)**-@n))
   
    @the_result = @numerator / @denom 

    render({ :template => "calc_template/payment_results" })
  end

  def square_results 
    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num **2 

    render({ :template => "calc_template/square_results" })
  end 

  def random_results
    render({ :template => "calc_template/random_results" }) 
  end 
  
  def home 
    render({ :template => "calc_template/home" }) 
  end 
end 
