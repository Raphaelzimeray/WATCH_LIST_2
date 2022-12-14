Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :bookmarks, only: [:new, :create ]
  end
  resources :bookmarks, only: [ :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
