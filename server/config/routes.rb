# Rails.application.routes.draw do
#   resources :drinks
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :drinks, only: [:index, :show, :create]
      resources :alcohols, only: [:index, :show]
      resources :user_lists, only: [:index, :show, :create]
    end
  end
end
