Rails.application.routes.draw do
  get 'foods', to: 'foods#index'
  get 'foods/new', to: 'foods#new'

  root "foods#index"
end
