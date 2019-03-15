Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'pages/welcome', to: "pages#welcome"
  
  #root
  root 'pages#home'
  #barrios
  get 'barrios/new', to: "barrios#new"
  get 'barrios/show', to: "barrios#show"
  #organizaciones
  get 'organizaciones/new', to: "organizaciones#new"
  get 'organizaciones/show', to: "organizaciones#show"
  #pages
  get 'pages/login', to: "pages#login"
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
  resources :organizaciones
  resources :barrios
  resources :representantes
  resources :recolectasrealizadas
  resources :recolectaspendientes
end
