Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'pages/welcome', to: "pages#welcome"
  
  #root
  root 'pages#home'
  #puntodeentregas  
  get 'puntodeentregas/new', to: "puntodeentregas#new"
  get 'puntodeentregas/show', to: "puntodeentregas#show"
  #organizaciones
  get 'restaurantes/new', to: "restaurantes#new"
  get 'restaurantes/show', to: "restaurantes#show"
  #pages
  get 'pages/login', to: "pages#login"
  get 'pages/registrarse', to: "pages#registrarse"
  #posts
  get 'posts/new', to: "posts#new"
  get 'posts/show', to: "posts#show"
  #recolectaspendientes
  get 'recolectaspendientes/new', to: "recolectaspendientes#new"
  get 'recolectaspendientes/show', to: "recolectaspendientes#show"
  #recolectasrealizadas
  get 'recolectasrealizadas/new', to: "recolectasrealizadas#new"
  get 'recolectasrealizadas/show', to: "recolectasrealizadas#show"
  #representantes
  get 'representantes/new', to: "representantes#new"
  get 'representantes/show', to: "representantes#show"
  
  resources :posts
  resources :restaurantes
  resources :puntodeentregas
  resources :representantes
  resources :recolectasrealizadas
  resources :recolectaspendientes
end
