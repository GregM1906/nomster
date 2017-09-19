Rails.application.routes.draw do
  get 'posts/index'

  devise_for :users
  devise_for :installs
  root 'places#index'
    resources :places do
      resources :comments, only: :create
    end
end

Rails.application.routes.draw do
  root to: 'places#index'
end
