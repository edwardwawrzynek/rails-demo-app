Rails.application.routes.draw do
  resources :users

  get '/', to: 'users#index'

  get '/find-user-by-id/:id', to: 'users#show', as: :user_by_id

  get   '/signin', to: 'sessions#new', as: :session_new
  post  '/signin', to: 'sessions#create', as: :session_create
  delete '/signout', to: 'sessions#destroy', as: :session_destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
