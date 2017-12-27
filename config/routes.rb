Rails.application.routes.draw do
  get 'articles/new'

  get '/top' =>'root#top'

  post '/articles' => 'articles#create'

  get '/articles/:id' => 'articles#show', as: 'article'

  get '/articles' => 'articles#index'

  get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'

  patch '/articles/:id' => 'articles#update', as: 'update_article'

 get 'posts/new'

  post '/posts' => 'posts#create'

  get '/posts/:id' => 'posts#show', as: 'post'

  get '/posts' => 'posts#index'

  get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'

  patch '/posts/:id' => 'posts#update', as: 'update_post'

  delete '/posts/:id' => 'posts#destroy', as: 'destroy_post'
end
