Admin::Engine.routes.draw do
  resources :projects
  resources :pages
  root to: "pages#index"
  root to: "application#welcome"
end
