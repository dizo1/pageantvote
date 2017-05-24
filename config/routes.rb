Rails.application.routes.draw do
  devise_for :users
  get 'contestant/index'

  get 'contestant/new'

  get 'contestant/create'

  get 'contestant/show'

  get 'contestant/edit'

  get 'contestant/update'

  get 'contestant/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root "home#index"
    get '/about', to: 'pages#about'
    get '/contact', to: 'pages#contact'
    resources :pageants
end
