Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :covid_photos
  resources :photo_usages
  get 'home/index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    get 'sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'
end
