Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  get 'users/create_random'
  get 'users/destroy_all'
  root to: 'users#index'
end
