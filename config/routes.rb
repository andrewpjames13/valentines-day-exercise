Rails.application.routes.draw do
  root "myvds#index"
  resources :myvds
end
