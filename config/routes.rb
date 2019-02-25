Rails.application.routes.draw do
  devise_for :users
  root 'home#welcome'
  resources :users, only: [:index, :show] do
    get 'shared_by_others', on: :member
    resources :locations, only: [:index, :new, :create]
  end
  get ':username', to: 'users#shared_location', as: :user_shared_location
end
