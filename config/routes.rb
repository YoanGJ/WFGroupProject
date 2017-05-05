Rails.application.routes.draw do

  resources :memberships
  resources :pages
  resources :gym_classes
  resources :members
  
  root 'static_pages#home'
  get 'contact' => 'static_pages#contact'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'admin' => 'admin#index'
end
