class ApplicationController < ActionController::Base

  # Square Functions
  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square

    @num = params.fetch("square_num").to_f
    @square_of_num = @num * @num
    render({ :template => "calculation_templates/square_results.html.erb"})
  end
  # Square Root Functions
  def blank_squareroot_form
    render({ :template => "calculation_templates/squareroot_form.html.erb"})
  end

  def calculate_squareroot

    @num = params.fetch("squareroot_num").to_f
    @squareroot_of_num = Math.sqrt(@num)
    render({ :template => "calculation_templates/squareroot_results.html.erb"})
  end


  # Payment Functions
  def blank_payment_form

    render({ :template => "calculation_templates/payment_form.html.erb"})
  end


  def calculate_payment

    @apr = (params.fetch("apr").to_f) / 100
    @num_years = params.fetch("num_years").to_f
    @principal = params.fetch("principal").to_f

    @result = ((@apr/12 * @principal) / (1 - ((1 + @apr/12) ** (@num_years * -12)))).round(2)
    
    @principal_return = "$" + params.fetch("principal")
    render({ :template => "calculation_templates/payment_results.html.erb"})
  end

  # Random Functions
  def blank_random_form

    render({ :template => "calculation_templates/random_form.html.erb"})
  end


  def calculate_random

    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f

    @result = rand(@lower..@upper)
    render({ :template => "calculation_templates/random_results.html.erb"})
  end
end
