Rails.application.routes.draw do
  get "/yakyu", to: "sports#baseball"
  resources :articles
  resources :users,defaults: { format: :json}
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

