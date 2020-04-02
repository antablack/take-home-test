class FavoritePhoto < ApplicationRecord
    validates_presence_of :photo_id
    validates_presence_of :url
end
