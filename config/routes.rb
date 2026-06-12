Rails.application.routes.draw do
  get "static_pages/top"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "static_pages#top"
  resources :users, only: %i[new create destroy]
  get 'login', to: "user_sessions#new"
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  resources :posts
  get 'posts', to: 'posts#index'
  post 'posts', to: 'posts#create'
  get '/posts/new', to: 'posts#new'
  get '/posts/:id', to: 'posts#show'
  get '/posts/:id/edit', to: 'posts#edit'
  put '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'
  resources :posts do
    collection do
      delete :bulk_destroy
    end
  end
end
