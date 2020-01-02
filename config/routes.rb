Rails.application.routes.draw do
  post '/volunteers-login', to: 'volunteers#login'
  post '/organizations-login', to: 'organizations#login'
  post '/events/:id', to: ''
  resources :organizations
  resources :events
  resources :volunteers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
