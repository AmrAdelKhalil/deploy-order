Rails.application.routes.draw do
  resources :histories
  resources :system_services
  resources :release_trains
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
