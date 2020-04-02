class CreateFavoritePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_photos do |t|
      t.timestamps
    end
  end
end
