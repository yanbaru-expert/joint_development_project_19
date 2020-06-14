Rails.application.routes.draw do
  resources :messages
  #resourceを使用したルーティング
  resources :tasks
end
