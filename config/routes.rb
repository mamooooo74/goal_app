Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  get 'comp/:id', to: 'goals#comp', as: 'comp'
  resources :goals, only: [:create, :show, :update] do
    resources :tasks, only: [:create,:destroy]
  end
    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
