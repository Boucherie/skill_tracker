Rails.application.routes.draw do
  resources :posts

  # one user from user pov
  resource :users, only: %i(new create)
  resource :sessions, only: %i(new create destroy)


  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
