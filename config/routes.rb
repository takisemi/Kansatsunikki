Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # 以下のDSL（Domain Specific Language。ドメイン固有言語）に従って、アプリケーションのルーティングを定義してください。
  get "static_pages/top"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # /up へのリクエストに対して、アプリが例外なしで起動した場合は200を、それ以外の場合は500を返すことで、稼働状況を通知します。
  # ロードバランサーや稼働状況監視ツールが、アプリが稼働中であることを確認するために利用できます。
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  # app/views/pwa/* にある動的なPWAファイルをレンダリングする
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # ルートパス「/」を定義します。
  root "static_pages#top"

  # ユーザー関連
  resources :users, only: %i[new create destroy]
  
  # ログイン・ログアウト
  get 'login', to: "user_sessions#new"
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  
  # 日記（投稿）関連
  resources :posts do
    collection do
      delete :bulk_destroy
    end
  end
end
