class CommentsController < ApplicationController
  def add_comment
    image_id = params.fetch("input_photo_id")
    comment_author = params.fetch("input_author_id")
    comment_body = params.fetch("input_body")

    c = Comment.new
    c.photo_id = image_id
    c.author_id = comment_author
    c.body = comment_body
    c.save

    the_id = c.photo_id

    redirect_to("/photos/"+ the_id.to_s)
  end




end
