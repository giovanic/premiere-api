Rails.application.routes.draw do
  
  devise_for :users, only: [:sessions], controllers: { sessions: 'api/v1/sessions'}

  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :create, :update, :destroy, :index]
      resources :sessions, only: [:create, :destroy]
      resources :customers, only: [:index]
    end
  end

end
