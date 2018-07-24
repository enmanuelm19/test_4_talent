Rails.application.routes.draw do
  get 'functions/index'
  resources :cities, only: [:index, :show] do
    collection do
      get :fetch_temperatures, to: 'cities#fetch_temperatures'
    end
  end
  root to: 'cities#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
