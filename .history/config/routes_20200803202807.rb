Rails.application.routes.draw do
  namespace :api do
    
  end

  resources :slogans
  resources :riders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end