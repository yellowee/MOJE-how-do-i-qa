Rails.application.routes.draw do
  devise_for :users

  root 'pages#test_0'

  resources :pages, only: [] do
    collection do
      get :test_0
    end
  end

end
