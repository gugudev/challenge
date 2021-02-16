Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :images
    end
  end
  root to: 'home#index'

  namespace :api, defaults: { format: :json } do

    scope :v1 do
      resources :images, only: [:create, :index, :destroy]
    end

  end

end