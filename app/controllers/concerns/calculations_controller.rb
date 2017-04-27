class CalculationsController < ApplicationController
  def square
    #parameters: {"user_number" => "66"}
    @user_number = params [:user_number].to.f
      @square = @user_number **2
      render("calularions/square.html.erb")
  end
  def square_forms
    render("calculations/square_form.html.erb")
  end

  def flex_square_num
    @user_number = params["num"].to_f
    @square = @user_number **2
    render("calculations/flex_square_5.html.erb")
  end

  def flex_square_root
    @user_number = params["num"].to_f
    @square_root = @user_number ** 0.5
    render("calculations/flex_square_root.html.erb")
  end

  def flex_present_value
    @monthly_payment = ((@apr/100/12) * @principal) / (1 - (1 + (@apr/100/12)) ** (- @years * 12))
    render("calculations/flex_present_value.html.erb")
  end

  def flex_random
  @user_number = params ["num"].to_f
  @random = @user_number
  render("calculations/flex_random.html.erb")
  end
end
