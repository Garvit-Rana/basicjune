Rails.application.routes.draw do
  
  get 'user/:id/edit',to: 'users#edit'
  delete 'user/:id',to: 'users#destroy'
  patch 'user/:id',to: 'users#update', as: :user
get 'user/sign_out'to: 'users#sign_out' 
  get 'user/index',to: 'users#index'
get 'users/new',to: 'users#new'
post 'users',to: 'users#create'
get 'users/sign_in',to: 'users#sign_in'
post 'users/create_session',to:'users#create_session'

 
root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#users_list' 


end
