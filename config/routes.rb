Rails.application.routes.draw do
  # get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do

    resources :reviews, only: [:new, :create]
    # MEMBER
    member do
      get :chef
      # chef_restaurant  GET  /restaurants/:id/chef(.:format)  restaurants#chef
    end

    # COLLECTION
    collection do
      get "top"
      # get "top", to: "restaurants#top"
    end
  end

  resources :reviews, only: [:destroy]
end
