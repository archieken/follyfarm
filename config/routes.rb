Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/about', to: 'pages#about', as: 'about'
  get '/news', to: 'pages#news', as: 'news'
  get '/dofe', to: 'pages#dofe', as: 'dofe'
  get '/attractions', to: 'attractions#view', as: 'attractions'
  get '/terms', to: 'pages#terms', as: 'terms'
  resources :photos, only: [:index]


end
