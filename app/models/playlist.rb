class Playlist < ApplicationRecord 
    validates :song_title, :artist, presence: true
end
