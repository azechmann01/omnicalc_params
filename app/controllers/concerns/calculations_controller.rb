class CalculationsController < ApplicationController
  def flex_square_5
    @user_number = params["num"].to_f
    @square = @user_number **2
    render("calculations/flex_square_5.html.erb")
  end
end

class CalculationsController <ApplicationController
  def flex_square_root_8
    @user_number = params["num"].to_f
    @square_root = @user_number / @user_number
    render ("calculations/flex_square_root_8.html.erb")

  end

end
