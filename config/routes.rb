Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"

  delete "/logout", to: "sessions#destroy"
  get "/get_current_user", to: "sessions#get_current_user"

  get "/current_user_recipes", to: "recipes#current_user_recipes"

  resources :users do
    resources :recipes, :comments, :likes do
      resources :ingredients
    end
  end

  resources :ingredients 
  
  resources :recipes do
    resources :ingredients, :comments, :likes
  end

  resources :likes
  resources :comments

end
