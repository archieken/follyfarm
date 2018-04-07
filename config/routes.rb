Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resources :news, only: [:update]
  resources :contactinfos, only: [:update]
  resources :findus, only: [:update]
  resources :prices, only: [:update]

  resources :attractions, only: [ :index, :new, :create, :edit, :update, :destroy]


  get '/about/edit', to: 'pages#about_edit', as: 'about_edit'
  get '/about', to: 'pages#about', as: 'about'
  get '/dofe', to: 'pages#dofe', as: 'dofe'
  get '/attractions/index_edit', to: 'attractions#index_edit', as: 'index_edit'
  get '/terms', to: 'pages#terms', as: 'terms'


  get '/images/edit', to: 'images#index_edit', as: 'images_index_edit'
  resources :images, only: [:index, :new, :create, :destroy]



end
