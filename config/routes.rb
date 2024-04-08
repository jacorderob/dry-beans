# frozen_string_literal: true

Rails.application.routes.draw do
  resources :delivery_routes, only: :show
  resources :trip_tasks, only: :create
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
