Rails.application.routes.draw do
  get 'restaurants/index'
  get 'restaurants/show'
  get 'foods', to: 'foods#index'
  get 'foods/new', to: 'foods#new'

  root "foods#index"
end
