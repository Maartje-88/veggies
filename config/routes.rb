Rails.application.routes.draw do

  devise_for :users
  get 'pages/about'

resources :veggies

root to: "veggy#index"

end
