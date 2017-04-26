Rails.application.routes.draw do
  get("/flexible/square/:num", {:controller => "calculations", :action => "flex_square_5"})
end
