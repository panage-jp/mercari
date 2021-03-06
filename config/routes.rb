Rails.application.routes.draw do
  root to: "products#index"
  devise_for :users, controllers: {
  omniauth_callbacks: 'users/omniauth_callbacks',
  registrations: 'users/registrations'
}

  devise_scope :user do
    get 'users/select', :to => 'users/registrations#select'
  end
  
  resources :users, only: [:show] do
    member do
      get "likes", "listings", "in_progress", "completed", "purchase", "purchased"
    end
  end
  resources :products, only: [:new, :create, :show] do
    member do
      post "purchase"
    end
  end
end
