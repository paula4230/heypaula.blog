Rails.application.routes.draw do
  resources :playlists
  root to: "playlists#index"
end
