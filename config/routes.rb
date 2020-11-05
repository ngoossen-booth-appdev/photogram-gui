Rails.application.routes.draw do

get("/", {:controller => "users", :action => "index"})

get("/users", {:controller => "users", :action => "index"})
get("/users/:user_id", {:controller => "users", :action => "show"})
get("/insert_user_record", {:controller => "users", :action => "add_user"})
get("/update_user/:user_id",{:controller => "users", :action => "update_user"})





get("/photos", {:controller => "photos", :action => "index"})
get("/photos/:photo_id", {:controller => "photos", :action => "show"})
get("/delete_photo/:photo_id", {:controller => "photos", :action => "delete"})
get("/insert_photo_record", {:controller => "photos", :action => "add_photo"})
get("/update_photo/:photo_id", {:controller => "photos", :action => "update"})

get("/insert_comment_record", {:controller => "comments", :action => "add_comment"})

end
