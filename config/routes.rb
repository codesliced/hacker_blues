HackerBlues::Application.routes.draw do
  resources :comments

  resources :posts

  resources :comment_votes, :only => [:create, :update, :show, :destroy]

  resources :post_votes, :only => [:create, :update, :show, :destroy]

  resources :users
  match 'signup' => 'users#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', :via => :delete

  root :to => 'posts#index'
end
