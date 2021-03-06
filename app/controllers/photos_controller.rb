class PhotosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def favorite_photos
    photo_id = params["photoId"]
    url = params["url"]
    favorite_photos = FavoritePhoto.new
    favorite_photos.photo_id = photo_id
    favorite_photos.url = url
    if !favorite_photos.valid? then 
      render status: 400, json: {:error => "There are missing fields"}.to_json
      return
    end
    favorite_photos.save
    render status: 200, json: {:success => "Favorite photo added"}.to_json
  end

  def get_favorite_photos
    @photos = FavoritePhoto.all
    render "photos/favorites"
  end

  def photos
    @photos = Unsplash::Photo.random(count: 100)
    render "photos/photos"
  end

  def search_photos
    str = params["q"]
    @photos = Unsplash::Photo.search(str)
    render "photos/photos"
  end

end
