class PhotosController < ApplicationController

def index
    matching_photos = Photo.all
  @list_of_photos = matching_photos.order({:created_at =>:desc})

    render({ :template =>"photo_templates/index.html.erb"})
  end

def show
  the_id = params.fetch(:photo_id)

  matching_photo = Photo.where({:id => the_id})
  @the_photo = matching_photo.at(0)

  matching_comments = Comment.where({:photo_id => the_id})
  @list_of_the_comments = matching_comments.order({:created_at=>:desc})
  
    render({ :template =>"photo_templates/show.html.erb"})
  end
end
