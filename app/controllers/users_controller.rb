class UsersController < ApplicationController

def index
  matching_users = User.all
  @list_of_users = matching_users.order({:created_at =>:desc})

    render({ :template =>"user_templates/index.html.erb"})
  end

  def show
    the_id = params.fetch("user_id")

    matching_user = User.where({:username => the_id})
    @the_user = matching_user.at(0)

    render({:template =>"user_templates/show.html.erb"})
  end
def add_user
  user_username = params.fetch("input_username")
  u = User.new
  u.username = user_username
  u.save

    redirect_to("/users/"+ u.username.to_s)

end
  def update_user
    the_id = params.fetch("user_id")
    username_update = params.fetch("input_username")

    matching_user = User.where({:id=>the_id})
    u=matching_user.at(0)
    u.username = username_update
    u.save

    redirect_to("/users/"+u.username.to_s)
  end

end