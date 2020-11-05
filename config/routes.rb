Rails.application.routes.draw do

get("/", {:controller => "home", :action => "home"})


get("/users", {:controller => "users", :action => "index"})
get("/users/:user_id", {:controller => "users", :action => "show"})

get("/photos", {:controller => "photos", :action => "index"})
get("/photos/:photo_id", {:controller => "photos", :action => "show"})


end
