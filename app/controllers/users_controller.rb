class UsersController < ApplicationController

def index
  matching_users = User.all
  @list_of_users = matching_users.order({:created_at =>:desc})

    render({ :template =>"user_templates/index.html.erb"})
  end

def show
  the_id = params.fetch(:user_id)

  matching_user = User.where({:username => the_id})
  @the_user = matching_user.at(0)

    render({ :template =>"user_templates/show.html.erb"})
  end

def update
  the_id = params.fetch(:user_id)

  matching_user = User.where({:username => the_id})
  @the_user = matching_user.at(0)

    render({ :template =>"user_templates/show.html.erb"})
  end


end