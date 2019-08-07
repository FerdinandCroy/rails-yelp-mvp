Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index'

  get 'restaurants/new', to: 'restaurants#new'
  get 'restaurants', to: 'restaurants#create'

  get 'reviews/:id', to: 'reviews#show'

  get 'reviews/new', to: 'review#new'
  get 'reviews', to: 'reviews#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
