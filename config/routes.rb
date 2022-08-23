  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  Rails.application.routes.draw do
    get 'about', to: 'pages#about'
    root "pages#home"
  
    resources :articles do
      resources :comments
    end
  end
  