Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  path = '/download'
  get path + '/overall/:id', to: 'application#overall'
  get path + '/artist/:id', to: 'application#artist'
  get path + '/art/:id', to: 'application#art'
end
