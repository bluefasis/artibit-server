Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get '/download/whole/:id', to: 'application#whole'
  get '/details/artist/:id', to: 'application#artist'
  get '/details/art/:id', to: 'application#art'
end
