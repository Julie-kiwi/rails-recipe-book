Rails.application.routes.draw do
  resources :recipes do
    resources :doses, only: [:create, :destroy]
    resources :ingredients, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
