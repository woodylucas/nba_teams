Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/teams', to: 'teams#index'
  get '/teams/new', to:'teams#new'
  get '/teams/:id', to:'teams#show', as: 'team'
  post '/teams', to: 'teams#create'
  get '/teams/:id/edit', to: 'teams#edit', as: 'team_edit'
  patch '/teams/:id', to: 'teams#update'
  delete '/teams/:id', to: 'teams#delete'
end
