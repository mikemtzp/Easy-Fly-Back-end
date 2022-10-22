Rails.application.routes.draw do

  # You can have the root of your site routed with "root"
  root 'homes#index'
  namespace :api do
    namespace :v1 do
      
      #For reservations CRUD
      get '/reservations', to: 'reservations#index'
      get '/reservations/:id', to: 'reservations#show'
      post '/add_reservation', to: 'reservations#create'
      delete '/del_reservation', to: 'reservations#destroy'

      #For jets CRUD
      post '/add_jet', to: 'jets#create'
      delete '/del_jet', to: 'jets#destroy'
      patch '/update_jet', to: 'jets#update'
      get '/jets', to: 'jets#index'
      get '/jets/:id', to: 'jets#show'

    end
  end

end
