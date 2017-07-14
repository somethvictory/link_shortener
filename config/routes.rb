Rails.application.routes.draw do
  devise_for :users
  root to: 'dashboard#index'

  get '/:id' => 'urls#show'

  namespace :api do
    namespace :v1 do
      resources :urls, only: [:index, :create]
      resources :logs, only: :index
    end
  end
end
