Rails.application.routes.draw do
  root 'static_pages#show', {id: 1}
  resources :static_pages
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
