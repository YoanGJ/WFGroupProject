Rails.application.routes.draw do

  resources :lecturers
  resources :module_admins
  resources :school_modules
  resources :students
  
  root 'static_pages#home'
  get 'contact' => 'static_pages#contact'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout'    => 'sessions#destroy'
  get 'admin' => 'admin#index'
  get 'signup_school_module' => 'school_modules#new'
  post 'signup_school_module' => 'school_modules#create'
  get 'signup_module_admin' => 'module_admins#new'
  post 'signup_module_admin' => 'module_admins#create'
  get 'signup_lecturer' => 'lecturers#new'
  post 'signup_lecturer' => 'lecturers#create'
  get 'signup_student' => 'students#new'
  post 'signup_student' => 'students#create'
  get 'choose_module' => 'school_modules#choose'
  get 'add_module_to_student' => 'school_modules#add_module_to_student'
  get 'delete_module_for_student' => 'school_modules#delete_module_for_student'
  get 'link_module_to_lecturer' => 'module_admins#link_module_to_lecturer'
  get 'validate_link' => 'module_admins#validate_link'
  get 'delete_link' => 'module_admins#delete_link'
  get 'lecturer_modules' => 'lecturers#lecturer_modules'
  get 'destroy_it_module' => 'school_modules#destroy_it_module'
  get 'destroy_it_module_admin' => 'module_admins#destroy_it_module_admin'
  get 'destroy_it_lecturer' => 'lecturers#destroy_it_lecturer'
  get 'destroy_it_student' => 'students#destroy_it_student'
end
