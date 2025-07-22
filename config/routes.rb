Rails.application.routes.draw do
  root to: 'pages#home'

  get 'pages/home', to: 'pages#home'
  get 'services', to: 'pages#services'
  get 'portfolio', to: 'pages#portfolio'
  get 'join', to: 'pages#join'
end
