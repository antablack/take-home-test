Rails.application.routes.draw do

  get  '/', controller: :photos, action: :photos

  scope '/api' do
      post  '/favorite-photos', controller: :photos, action: :favorite_photos
      get  '/favorite-photos', controller: :photos, action: :get_favorite_photos
  end


end