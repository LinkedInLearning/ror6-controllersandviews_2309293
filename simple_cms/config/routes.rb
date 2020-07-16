Rails.application.routes.draw do

  root 'demo#index'

  get 'demo/index'
  get 'demo/about'
  get 'demo/contact'

  get 'menu' => 'access#menu'
  get 'login' => 'access#new'
  delete 'logout' => 'access#destroy'
  resource :access, controller: 'access', except: [:show, :edit, :update] do
    member do
      get :menu
    end
  end

  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
