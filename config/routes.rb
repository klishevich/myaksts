Myaksts::Application.routes.draw do

  # get "science_specific_fields/index"

  # devise_for :user

  # authenticate :user do
  #   # Rails.logger.debug 
  #   mount Resque::Server, :at => "/resque" #if current_user.has_role :admin
  # end

  # resources :messages

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"

  devise_for :users, :controllers => { :registrations => 'users/registrations' }

  resources :users
  resources :applics do
    resources :applic_files
  end
  # resources :kofst_applics
  
  # get 'view_applic', to: 'applics#show'
  # match '/edit_applic', to: 'applics#edit'
  # match '/apply', to: 'applics#new'
  resources :antok_members

  match '/antok_id', to: 'find_antok_members#index'

  match '/about', to: 'static_pages#about'
  match '/history', to: 'static_pages#history'
  match '/message', to: 'static_pages#message'
  match '/program', to: 'static_pages#program'
  match '/hotel', to: 'static_pages#hotel'
end
