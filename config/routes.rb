Rails.application.routes.draw do

  resources :debates do
    resources :submissions
  end

  root 'pages#home'
  get 'pages/contact'

  devise_for :users, controllers: { registrations: "profiles_registration"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
