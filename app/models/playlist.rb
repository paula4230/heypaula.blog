class Playlist < ApplicationRecord 
    validates :song_title, :artist, presence: true
    validates :song_title, uniqueness: true, on: :create
    validates :song_title, uniqueness: true, on: :update 
end
