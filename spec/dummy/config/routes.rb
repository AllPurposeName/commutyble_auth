Dummy::Application.routes.draw do

  get "stuff/public"
  get "stuff/private"
  root 'stuff#public'

end
