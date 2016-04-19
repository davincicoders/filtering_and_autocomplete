Rails.application.routes.draw do
  resources :users do
    collection do
      get :autocomplete_user_first_name
      get :autocomplete_user_last_name
    end
  end

  root 'users#index'
end
