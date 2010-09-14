Shoutsus::Application.routes.draw do

  resources :shouts do
    collection do
      get :fetch
    end
  end

  root :to => "shouts#index"

  devise_for :users
end

