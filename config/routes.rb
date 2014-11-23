Myaksts::Application.routes.draw do
  get 'science_specific_fields/index'

  devise_for :user

  authenticate :user do
    # Rails.logger.debug
    mount Resque::Server, at: '/resque' # if current_user.has_role :admin
  end

  resources :messages

  match '/about', to: 'static_pages#about'
  match '/programme', to: 'static_pages#programme'
  match '/hotel', to: 'static_pages#hotel'
  match '/sponsors', to: 'static_pages#sponsors'

  authenticated :user do
    root to: 'home#index'
  end
  root to: 'home#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users

  resources :applics

  resources :kofst_applics

  get 'view_applic', to: 'applics#show'
  match '/edit_applic', to: 'applics#edit'
  match '/apply', to: 'applics#new'

end
