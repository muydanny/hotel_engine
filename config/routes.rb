Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do 
      get 'image', controller: 'image', action: 'show'
    end
  end
end

# swagger - mounting a rails engine on a route