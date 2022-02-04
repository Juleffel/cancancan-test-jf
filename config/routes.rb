Rails.application.routes.draw do
  devise_for :users
  resources :companies do
    resources :project1s do
      get 'custom_collection', on: :collection
      get 'custom_member', on: :member
    end
    resources :project2s do
      get 'custom_collection', on: :collection
      get 'custom_member', on: :member
    end
    resources :project3s do
      get 'custom_collection', on: :collection
      get 'custom_member', on: :member
    end
    resources :project4s do
      get 'custom_collection', on: :collection
      get 'custom_member', on: :member
    end
    resources :project5s do
      get 'custom_collection', on: :collection
      get 'custom_member', on: :member
    end
    resources :project6s do
      get 'custom_collection', on: :collection
      get 'custom_member', on: :member
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
