Rails.application.routes.draw do
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end

  devise_for :users

  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new'
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurants'
  post 'restaurants', to: 'restaurants#create'
  patch 'restaurants/:id', to: 'restaurants#update'
  delete 'restaurants', to: 'restaurants#destroy'
  
  get 'foods', to: 'foods#show'
  get 'foods/new', to: 'foods#new'

  root "restaurants#home"
end
