RailsFourTicketee::Application.routes.draw do 

  namespace :admin do
    root :to => "base#index"
    resources :users do
      resources :permissions
      put "permissions", to: "permissions#set", as: "set_permissions"
    end
  end

  get "/sign_in", to: "sessions#new"
  post "/sign_in", to: "sessions#create"
  delete "/sign_out", to: "sessions#destroy", as: "signout"

  root "projects#index"

  resources :users

  resources :projects do 
    resources :tickets
  end

end
