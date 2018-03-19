# frozen_string_literal: true
Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root 'todos#index', as: :authenticated_root
  end

  root              to: 'static_pages#home'
  get    'about',   to: 'static_pages#about'
  get    'company', to: 'static_pages#company'

  resources :todos, only: [:index, :show, :edit, :update, :new, :create]
end
