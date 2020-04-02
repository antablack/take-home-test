class AddFavoritesPhotosFields < ActiveRecord::Migration[6.0]
  def change
    add_column :favorite_photos, :photo_id, :string
    add_column :favorite_photos, :url, :string
  end
end
