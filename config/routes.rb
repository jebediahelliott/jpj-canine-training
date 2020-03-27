Rails.application.routes.draw do
  root 'static_pages#show', {id: 1}

  match '/about',             to: 'static_pages#show', id: 1, via: :get
  match '/training-programs', to: 'static_pages#show', id: 2, via: :get
  match '/consultation',      to: 'static_pages#show', id: 4, via: :get
  match '/puppy-school',      to: 'static_pages#show', id: 6, via: :get
  match '/basic-program',     to: 'static_pages#show', id: 3, via: :get
#   match '/group-classes',     to: 'static_pages#show', id: 2, via: :get
  match '/graduate-program',  to: 'static_pages#show', id: 5, via: :get
  match '/resident-training', to: 'static_pages#show', id: 7, via: :get
  match '/service-training',  to: 'static_pages#show', id: 8, via: :get
  match '/tracking',          to: 'static_pages#show', id: 9, via: :get
#   match '/contact',           to: 'static_pages#show', id: 2, via: :get
  
  resources :static_pages
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
