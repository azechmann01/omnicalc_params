Rails.application.routes.draw do
  get("/flexible/square/:num", {:controller => "calculations", :action => "flex_square_num"})
  get("/flexible/square_root/:num", {:controller => "calculations", :action => "flex_square_root"})
  get("/flexible/payment/:basis_points/:number_of_years/:present_value", {:controller => "calculations", :action => "flex_present_value"})
  get("/flexible/random/:min/:max", {:controller => "calculations", :action => "flex_random"})
  get("/square/new", {:controller => "caclualtions", :action => "square"})
end
