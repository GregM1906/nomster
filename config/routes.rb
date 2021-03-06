Rails.application.routes.draw do
  get 'posts/index'

  devise_for :users
  devise_for :installs
  root 'places#index'
    resources :places do
      resources :comments, only: :create
      resources :photos, only: :create
    end
    resources :users, only: :show
end


Rails.application.routes.draw do
  root to: 'places#index'
end
