Rails.application.routes.draw do
  root to: 'pages#index'
  mount Admin::Engine, at: "admin"
  
  resources :projects, param: :name
  resources :pages, param: :route, path: ''
end
