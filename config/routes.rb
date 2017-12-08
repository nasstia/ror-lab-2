Rails.application.routes.draw do


<<<<<<< HEAD
  get 'images/new'

=======
>>>>>>> df42636c40b5e9d81677e53d2aa62d7287317763
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "pages#index"

  resources :posts do
  	resources :postcomments
  end

  resources :photos do
<<<<<<< HEAD
    member do
      get :vote
    end
  end

  resources :images

=======
  end

>>>>>>> df42636c40b5e9d81677e53d2aa62d7287317763
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
