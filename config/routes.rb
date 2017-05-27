Rails.application.routes.draw do
  devise_for :users
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root "home#index"
    get '/about', to: 'pages#about'
    get '/contact', to: 'pages#contact'
    resources :pageants
    resources :contestants
    resources :users
end
