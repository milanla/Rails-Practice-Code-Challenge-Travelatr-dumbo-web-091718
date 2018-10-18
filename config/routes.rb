Rails.application.routes.draw do
  post '/posts/:id/likes', to: "posts#likes", as: "like"

  resources :destinations, only: [:show]
  resources :bloggers, only: [:show, :new, :create]
  resources :posts


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
