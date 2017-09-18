Rails.application.routes.draw do
  root              to: 'static_pages#home'
  get    'about',   to: 'static_pages#about'
  get    'company', to: 'static_pages#company'

end
