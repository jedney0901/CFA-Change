Rails.application.routes.draw do

  resources :profiles
  resources :debates do
    resources :submissions
  end

  root 'pages#home'
  get 'pages/contact'

  devise_for :users



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
