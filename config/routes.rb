Rails.application.routes.draw do
  devise_for :users, path: '',
             path_names: {
                 sign_in: 'login', sign_out: 'logout', sign_up: 'register'
             }

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'


  resources :portfolios
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  root to: 'pages#home'
end
