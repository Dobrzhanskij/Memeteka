Rails.application.routes.draw do
  root 'memes#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  resources :memes do
    resources :comments
  end

end
