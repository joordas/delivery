Rails.application.routes.draw do
  get 'selected_dishes/create'

  get 'dishes/show'

  get 'restaurants/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  resources :restaurants do
    resources :dishes do
      resources :selected_dishes, only: :create
    end
  end
  
end
