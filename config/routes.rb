Rails.application.routes.draw do
  get 'hobbies/index'

  post 'hobbies/index' => 'hobbies#create'

  root to: 'hobbies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
