Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    session: 'users/sessions',
    unlocks: 'users/unlocks',
    password: 'users/passwords'
  }

  root 'pages#index'
  get 'pages/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
