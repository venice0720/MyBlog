Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new'
  get '/articles/name/:name' => 'articles#find_name'
  delete '/articles/delete/:id' => 'articles#delete', as: 'article_delete'
  get '/articles/edit/:id' => 'articles#edit', as: 'article_edit'
  get '/articles/:id' => 'articles#show'
  put '/articles/update/:id' => 'articles#update', as: 'article_update'
  post 'articles' => 'articles#create', as: 'article_create'
  
end
