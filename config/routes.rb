Rails.application.routes.draw do
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'


  resources :portfolios
  resources :blogs
  root to: 'pages#home'
end
