Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      # define api endpoints
      get 'trips' => 'trips#index'
      get 'trips/:id' => 'trips#show'
    end
  end
end
