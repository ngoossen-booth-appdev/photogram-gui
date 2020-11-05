  class HomeController < ApplicationController


def home
    render({ :template =>"misc_templates/index.html.erb"})
  end

end