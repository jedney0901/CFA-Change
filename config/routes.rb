Rails.application.routes.draw do

  resources :debates do
    resources :submissions do
      collection do
        get 'pro'
        get 'con'
      end
    end
  end


  root 'pages#home'

  get 'contact', to: "pages#contact"
  get 'admindashboard', to: "pages#admin_dashboard"


  devise_for :users, controllers: { registrations: "profiles_registration"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
