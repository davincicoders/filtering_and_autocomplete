Rails.application.routes.draw do
  get 'filter' => 'users#filter'

  resources :users

  root 'users#index'
end
