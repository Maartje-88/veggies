Rails.application.routes.draw do

  get 'pages/about'

resources :veggies

root to: "veggy#index"

end
