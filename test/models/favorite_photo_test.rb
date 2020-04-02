require 'test_helper'

class FavoritePhotoTest < ActiveSupport::TestCase
   test "Valid required fields" do
      favorite_photo = FavoritePhoto.new
      assert_not favorite_photo.save
   end

   test "Valid required fields (filled)" do
    favorite_photo = FavoritePhoto.new
    favorite_photo.photo_id = "64234"
    favorite_photo.url = "http://www.image.com"
    assert favorite_photo.save
 end
end
