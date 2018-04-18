Rails.application.routes.draw do
  resources :seasons
  resources :meetings
  devise_for :users
  root to: 'pages#about'


  resources :news, only: [:update]
  resources :contactinfos, only: [:update]
  resources :findus, only: [:update]
  resources :prices, only: [:update]
  resources :terms, only: [:update]
  resources :abouts, only: [:update]

  resources :attractions, only: [ :index, :new, :create, :edit, :update, :destroy]


  get '/edit', to: 'pages#about_edit', as: 'about_edit'
  get '/home', to: 'pages#about', as: 'home'
  get '/dofe', to: 'pages#dofe', as: 'dofe'
  get '/attractions/edit', to: 'attractions#index_edit', as: 'index_edit'

  get '/calendar', to: 'pages#calendar', as: 'calendar'
  get '/terms', to: 'pages#terms', as: 'terms'


  get '/images/edit', to: 'images#index_edit', as: 'images_index_edit'
  resources :images, only: [:index, :new, :create, :destroy]

  get '/terms/edit', to: 'pages#terms_edit', as: 'terms_edit'

end
