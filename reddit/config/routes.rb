Rails.application.routes.draw do

  resources :users # :users, only: [:show, :new, :create]

  resources :subreddits

end
