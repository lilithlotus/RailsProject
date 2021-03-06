Rails.application.routes.draw do
  root 'welcome#home'
  resources :categories
  resources :items do
    resources :images
  end
  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/auth/facebook/callback' => 'sessions#facebook'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
