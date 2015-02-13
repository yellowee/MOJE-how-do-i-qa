Rails.application.routes.draw do
  devise_for :users

  root 'pages#test_0'

end
