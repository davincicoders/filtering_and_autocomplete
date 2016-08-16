Rails.application.routes.draw do
  resources :users do
    get :autocomplete_user_first_name, on: :collection
  end

  root 'users#index'
end
