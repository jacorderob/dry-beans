# frozen_string_literal: true

Rails.application.routes.draw do
  resources :delivery_routes, only: :show
  resources :trip_tasks, only: :create
end
