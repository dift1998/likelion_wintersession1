Rails.application.routes.draw do
  
  root "home#index"
  get 'home/index' 

  get 'posts/index' 

  get 'posts/new'

  get 'posts/edit' => "posts#edit"
  post 'posts/create'
  post 'posts/update'
  get 'posts/destroy/:id' => "posts#destroy"

  get 'posts/show/:id' => "posts#show"


  get 'random/index'

  get 'random/result' => "random#result"
  post '/posts/show/:id/comments/create' => 'comments#create'
  post 'comments/destroy' => 'comments#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
