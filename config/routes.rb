Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
 
  namespace :api do
    resources :posts, only: [:index, :update] do
      resources :answers, only: [index, :update]
    end
  end

end
