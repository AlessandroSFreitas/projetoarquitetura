Rails.application.routes.draw do
  get 'welcome/index'
  post 'client/create'
  get 'client/show'
  get 'client/export'

  resources :client, only: %i[new destroy]

  root 'welcome#index'
end
