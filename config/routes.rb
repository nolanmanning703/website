Nathanl::Application.routes.draw do
  root to: 'main#index'

  post 'login'  => 'authentication#create'
  get  'login'  => 'authentication#new'
  get  'logout' => 'authentication#logout'

  put 'me'      => 'me#update'
  get 'me'      => 'me#show'
  get 'me/edit' => 'me#edit'

  resources :posts
end
