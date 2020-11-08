Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/roll', to: 'dice#roll'
    end
  end
end
