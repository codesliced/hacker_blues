HackerBlues::Application.routes.draw do
  #Comments
  resources :comments

  #Posts
  resources :posts

  #Comment_Votes
  resources :comment_votes, :only => [:create, :update, :show, :destroy]

  #Post_Votes
  resources :post_votes, :only => [:create, :update, :show, :destroy]

  #Users
  resources :users
  match 'signup' => 'users#new'

  #Sessions
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', :via => :delete

  #Root
  root :to => 'posts#index'
end
