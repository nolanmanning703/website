Nathanl::Application.routes.draw do
  root to: 'pages#home', :as => 'home'

  get    'login'  => 'sessions#new',     :as => 'sessions'
  post   'login'  => 'sessions#create',  :as => 'sessions'
  get    'logout' => 'sessions#destroy', :as => 'sessions'
  delete 'logout' => 'sessions#destroy', :as => 'sessions'

  resource :me, :controller => :me, :except => [:new, :create, :destroy] do
    get 'change_password' => 'me#change_password', :as => 'change_password'
  end

  resources :posts
end
