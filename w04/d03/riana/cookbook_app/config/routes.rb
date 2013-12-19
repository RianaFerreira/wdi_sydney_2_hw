CookbookApp::Application.routes.draw do
 resources :books, :recipes, :ingredients

 get '/login' => 'session#new'
 post '/login' => 'session#create'
 delete /login' => 'session#destroy'
end
