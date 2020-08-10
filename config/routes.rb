Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'games#home'

  get '/score', to: 'games#score'
  get '/new', to: 'games#new'
end
