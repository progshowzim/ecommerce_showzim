Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'home#index'
  resources :settings, only: [:index] do
    collection do
      patch :update_user
    end
  end

  namespace :admin do
    root to: 'home#index'
    resources :categories
    resources :products
  end
end
