Rails.application.routes.draw do
  resources :playlists
  root to: "playlists#index"

  get '/playlists' => 'playlists#index', as: 'question_index'
  get '/playlists/html' => 'playlists#html', as: 'playlist_html',
  get '/playlists/css' => 'playlists#css', as: 'playlist_css',
  get '/playlists/javascript' => 'playlists#javascript', as: 'playlist_javascript',
  get '/playlists/ruby' => 'playlists#ruby', as: 'playlist_ruby',
end
