Rails.application.routes.draw do

  namespace :admin do
    resources :users, :only => [:index, :show]
    resources :products, :only => [:index, :new, :edit, :create, :update, :destroy] do
      resources :discs, :only => [:create, :update, :destroy] do
        resources :musics, :only => [:create, :update, :destroy]
      end
    end
  end

  resources :users, :only => [:show, :edit, :update] do
    resources :cart, :only => [:index, :create, :update]
  end

  resources :products, :only => [:index, :show]

  resources :order, :only => [:create]

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end