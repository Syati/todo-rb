# frozen_string_literal: true
Rails.application.routes.draw do
  root              to: 'static_pages#home'
  get    'about',   to: 'static_pages#about'
  get    'company', to: 'static_pages#company'

  resources :todos, only: [:index, :show]
end
