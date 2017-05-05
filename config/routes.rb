Rails.application.routes.draw do

  resources :contact_posts
  resources :memberships
  resources :pages
  resources :gym_classes
  resources :members
  
  root 'static_pages#home'
  get 'contact' => 'static_pages#contact'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  get 'admin' => 'admin#index'
  get 'destroy_it_membership' => 'memberships#destroy_it_membership'
end
