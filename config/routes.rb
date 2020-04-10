Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  ###############
  get 'welcome/index'

  resources :articles
  ###############
  
  get 'with_router/index'

  root 'posts#index'

  get 'about' => 'pages#about'

  #about -> route
  #pages -> controller
  #about -> html

  resources :posts

  #resources -> defines all methods

end
