Rails.application.routes.draw do
  
  get 'pages/home'
  resources :addresses
  resources :user_profiles
  devise_for :users #, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

  root to: 'pages#home'
end
