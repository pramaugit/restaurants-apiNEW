Rails.application.routes.draw do
   namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :restaurants, only: [ :index, :show, :update, :create, :destroy] do
        member do
          post "comment"
        end
      end
    end
  end
end


