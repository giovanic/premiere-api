Rails.application.routes.draw do
  
  devise_for :users, only: [:sessions], controllers: { sessions: 'api/v1/sessions'}

  namespace :api, defaults: { form: :json }, constraints: { subdomain: 'api'}, path: '/' do
    namespace :v1, path: '/' do
      resources :users, only: [:show, :create, :update, :destroy]
      resources :sessions, only: [:create]
    end
  end

end
