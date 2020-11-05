Rails.application.routes.draw do

get("/", {:controller => "users", :action => "index"})

get("/users", {:controller => "users", :action => "index"})
get("/users/:user_id", {:controller => "users", :action => "show"})
get("/update_user/:user_id",{:controller => "users", :action => "update"})




get("/photos", {:controller => "photos", :action => "index"})
get("/photos/:photo_id", {:controller => "photos", :action => "show"})
get("/delete_photo/:photo_id", {:controller => "photos", :action => "delete"})


end
