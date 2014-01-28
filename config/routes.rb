Myaksts::Application.routes.draw do

  match '/about', to: 'static_pages#about'
  match '/programme', to: 'static_pages#programme'
  match '/hotel', to: 'static_pages#hotel'  
  match '/sponsors', to: 'static_pages#sponsors'  

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end