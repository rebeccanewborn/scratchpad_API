Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :projects
      # post 'signup' => 'users#create'
      post 'login' => 'auth#create'
      get 'login' => 'auth#show'
    end
  end
end
