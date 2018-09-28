Rails.application.routes.draw do
  get 'user/new'
  get 'user/index'
  get 'user/edit'
  get 'user/show'
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/help'
  get 'static_pages/contact'
  resources :user
end
