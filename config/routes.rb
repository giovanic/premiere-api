Rails.application.routes.draw do
  
  devise_for :users
  namespace :api, defaults: { form: :json }, constraints: { subdomain: 'api'}, path: '/' do
    namespace :v1 do
      resources :customers
    end
  end

end
