class CalculationsController < ApplicationController

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
    # 
  render("calculations/flex_present_value.html.erb")
  end
end
