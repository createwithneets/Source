Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



#categoires controller

resources :categories
#items controller
resources :items


resources :users

resource :session
#users can only have one session but a user can sign up multiple times



resource :account
#users can only edit 1 account

get "about", to: "pages#about"

root "pages#home"

end
