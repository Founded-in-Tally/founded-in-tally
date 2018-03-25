Rails.application.routes.draw do
  namespace :admin do
    resources :companies
    resources :contributors
    resources :events
    resources :categories
    # resources :entity_categories
    resources :stages
    # resources :entity_stages

    root to: "companies#index"
  end

  resources :events
  resources :contributors
  resources :companies

  root to: 'companies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
