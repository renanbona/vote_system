Rails.application.routes.draw do
  get 'campaigns/index'
  get 'campaigns/show'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
