Rails.application.routes.draw do
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end

  devise_for :users
  get 'restaurants', to: 'restaurants#show'
  get 'restaurants/new', to: 'restaurants#new'
  get 'foods', to: 'foods#show'
  get 'foods/new', to: 'foods#new'

  root "restaurants#index"
end
