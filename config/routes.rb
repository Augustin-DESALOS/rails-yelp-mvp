Rails.application.routes.draw do
  resources :restaurants, only: [ :index, :show, :new, :create, :destroy ] do
    resources :reviews, only: [ :new, :create, :destroy ]
  end
end