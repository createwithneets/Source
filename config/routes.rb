Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


resources :users

resource :session
#users can only have one session but a user can sign up multiple times

get "about", to: "pages#about"

root "pages#home"

end
