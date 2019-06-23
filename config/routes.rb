# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "campaigns#index"
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :campaigns, only: [:index, :show]
  resources :like, only: [:show, :create, :update]
end
