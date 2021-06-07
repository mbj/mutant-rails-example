Rails.application.routes.draw do
  get '/inventory', to: 'my_app/inventory#index'
end
