Rails.application.routes.draw do

  get 'dashboard/index'
  get 'user/register'
  get 'login/index'

  root 'login#index'

  resources :users, :path => "users/register", :controller => 'user'
  resources :users, :path => "users/login", :controller => 'login'

end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
