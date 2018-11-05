Rails.application.routes.draw do
  root 'goods#index'

  resources :goods, only: [:show, :create] do
  end

  resources :users, only: :index do
  end
end
