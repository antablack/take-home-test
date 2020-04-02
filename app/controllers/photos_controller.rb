class PhotosController < ApplicationController
  def favorite_photos
    photo_id = params["photoId"]
    url = params["url"]
    favorite_photos = FavoritePhoto.new
    favorite_photos.photo_id = photo_id
    favorite_photos.url = url
    if !favorite_photos.valid? then 
      render status: 400, json: {:error => "There are missing fields"}.to_json
    end
    favorite_photos.save
  end

  def get_favorite_photos
    render json: FavoritePhoto.all, status: 200
  end

  def photos
    render "photos/photos"
  end

end