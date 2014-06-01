RailsFourTicketee::Application.routes.draw do 

  namespace :admin do
    resources :users
  end

  get "/sign_in", to: "sessions#new"
  post "/sign_in", to: "sessions#create"

  root "projects#index"

  resources :users

  resources :projects do 
    resources :tickets
  end

end
