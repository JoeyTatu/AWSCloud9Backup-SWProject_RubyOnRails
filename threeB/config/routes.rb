Rails.application.routes.draw do
  get 'profiles/index'
  get 'profiles/show'
  get 'profiles/edit'
  get 'profiles/delete'
  get 'users/show'
  devise_for :views
  root 'welcome#index'
  get 'welcome/index'
  
  devise_for :users

  resources :users
  resources :profiles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
