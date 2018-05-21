Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'

  resources :posts do
    resources :comments, only: [:new, :create, :destroy]
  end

  get '/about', to: 'pages#about'
end
