Rails.application.routes.draw do
  resources :buildings do
    resources :apartments, only: [ :index, :new, :show ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
