Rails.application.routes.draw do
  get '/titles' => 'titles#index'
  post 'titles/destroy' => 'titles#destroy'
  get 'titles/new'
  post 'titles/create' => 'titles#create'

  get '/users' => 'users#index'
  get '/user' => 'users#show'
  get '/users/:id' => 'users#show'

  get '/hobbies' => 'hobbies#index'
  post '/hobbies' => 'hobbies#index'
  get 'hobbies/new'
  post 'hobbies/create' => 'hobbies#create'
  post 'hobbies/destroy' => 'hobbies#destroy'

  post 'user_hobbies/create' => 'user_hobbies#create'
  post 'user_hobbies/destroy' => 'user_hobbies#destroy'

  post 'user_titles/create' => 'user_titles#create'
  post 'user_titles/destroy' => 'user_titles#destroy'

  get 'auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  root to: 'hobbies#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
