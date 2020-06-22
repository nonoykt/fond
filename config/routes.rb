Rails.application.routes.draw do
  root 'pages#index'
  get 'index', to: 'pages#index'
  get '/about', to: 'pages#show'
  get '/help', to: 'pages#help'
  get '/privacy', to: 'pages#privacy'
  get '/terms_of_service', to: 'pages#terms_of_service'
  get 'timeline', to:'microposts#timeline'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    session: 'users/sessions',
    unlocks: 'users/unlocks',
    password: 'users/passwords'
  }
  
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest'
    get 'sign_in', to: 'users/sessions#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, only: %i[index show]

  resources :microposts, only: %i[index show edit create destroy new]
end
