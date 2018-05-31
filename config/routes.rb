Rails.application.routes.draw do
  resources :vitamins
  get 'pages/contact'

devise_for :users
as :user do
  get "signin" => 'devise/sessions#new'
  delete "signout" => 'devise/sessions#destroy'
  get "signup" => 'devise/registrations#new'
end
get 'pages/about'
get 'pages/contact'
resources :veggies
root to: "veggies#index"
end
