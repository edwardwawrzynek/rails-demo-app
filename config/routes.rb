Rails.application.routes.draw do
  resources :users

  get '/find-user-by-id/:id', to: 'users#show', as: :user_by_id
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
