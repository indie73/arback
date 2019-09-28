Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :instructions, only: %i[index show]
      resources :control_points, only: %i[index]
    end
  end
end
