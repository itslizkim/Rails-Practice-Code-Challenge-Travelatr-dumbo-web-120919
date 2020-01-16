Rails.application.routes.draw do
  resources :bloggers
  resources :posts
  resources :destinations

  post '/posts/:id' => 'posts#add_like', as: 'like' 
  #custom route. post the new_like(custom method) =>  
end
