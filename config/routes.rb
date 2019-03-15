Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'pages/welcome', to: "pages#welcome"
  
  root 'pages#home'
  
  get 'pages/login', to: "pages#login"
  
  get 'posts/new', to: "posts#new"
  

  
  resources :posts
  resources :organizaciones
  resources :barrios
  resources :representantes
  resources :recolectasrealizadas
  resources :recolectaspendientes
end
