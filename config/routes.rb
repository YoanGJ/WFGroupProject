Rails.application.routes.draw do

  resources :contact_posts
  resources :memberships
  resources :pages
  resources :gym_classes
  resources :members
  
  root 'pages#show', :defaults => { :id => 1 }
  get 'contact' => 'static_pages#contact'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  get 'admin' => 'admin#index'
  get 'destroy_it_membership' => 'memberships#destroy_it_membership'
  get 'destroy_it_page' => 'pages#destroy_it_page'
  get 'destroy_it_contact_post' => 'contact_posts#destroy_it_contact_post'
end
