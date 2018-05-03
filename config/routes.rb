Rails.application.routes.draw do
  get 'hobbies/index'
  post 'hobbies/index' => 'hobbies#destroy'
  get 'hobbies/new'
  post 'hobbies/new' => 'hobbies#create'

  get 'auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  root to: 'hobbies#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
