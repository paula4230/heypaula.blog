json.extract! playlist, :id, :song_title, :artist, :album, :created_at, :updated_at
json.url playlist_url(playlist, format: :json)
