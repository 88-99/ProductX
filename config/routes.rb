Rails.application.routes.draw do
  namespace :admin do
    resources :users
  end

  root 'tops#index'
  get '/menus', to: 'menus#index' # 「get 'menus/index'」-> menus_index_pathになる
  get '/menu_member', to: 'menus#show'
  get 'stocks/show'

  resources :sales do
    member do
      delete 'detail_destroy'
    end
  end

  resources :teams do
    resources :groupings
    resources :products
    resources :purchases do
      member do
        delete 'detail_destroy'
      end
    end
  end

  resources :questions do
    resources :answers
  end

  resources :suppliers
  resources :clients

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
    post 'admins/guest_sign_in', to: 'users/sessions#admin_guest_sign_in'
  end
end