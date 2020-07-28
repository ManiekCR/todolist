Rails.application.routes.draw do
  devise_for :users
  root to: 'todo_lists#index'

  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end
end
