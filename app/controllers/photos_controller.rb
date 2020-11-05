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

def add_photo
  image_url = params.fetch("input_image")
  image_caption = params.fetch("input_caption")
  image_owner_id = params.fetch("input_owner_id")

  i = Photo.new
  i.image = image_url
  i.caption = image_caption
  i.owner_id = image_owner_id
  i.save

  the_id = i.id

    redirect_to("/photos/"+ the_id.to_s)

end

def update
image_url = params.fetch("input_image")
image_caption = params.fetch("input_caption")

the_id = params.fetch("photo_id")
  matching_photo = Photo.where({:id => the_id})
  i = matching_photo.at(0)
  i.image = image_url
  i.caption = image_caption
  i.save
redirect_to("/photos/"+ the_id.to_s)
end


  def delete
  the_id = params.fetch("photo_id")
  matching_photos = Photo.where({:id => the_id})
  the_photo = matching_photos.at(0)
  the_photo.destroy
  
    #render({ :template =>"photo_templates/baii.html.erb"})
    redirect_to("/photos")
  end


end
