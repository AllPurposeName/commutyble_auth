Rails.application.routes.draw do
  # omniauth
  get '/auth/:provider/callback', :to => 'commutyble_auth/user_sessions#create'
  get '/auth/failure', :to => 'commutyble_auth/user_sessions#failure'

  # Custom logout
  post '/logout', :to => 'commutyble_auth/user_sessions#destroy'
end
