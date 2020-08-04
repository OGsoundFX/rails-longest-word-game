Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/score', to: 'games#score'
  get '/', to: 'games#new'
end
