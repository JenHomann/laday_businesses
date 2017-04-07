Rails.application.routes.draw do

  root 'businesses#index'

  resources :businesses, only: [:index, :show, :new, :create, :edit, :update]

end
