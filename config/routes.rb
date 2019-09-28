Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :files, only: %i[create index show]
      resources :events, only: %i[create index show]
      resources :instructions, only: %i[create index show]
      resources :details, only: %i[create index show]
      resources :steps, only: %i[create index show]
    end
  end
end
