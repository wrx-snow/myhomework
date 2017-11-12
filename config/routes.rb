Rails.application.routes.draw do
  post 'home/delaccountcheck'

  get 'home/delaccount'

  post 'home/passwdcheck'

  get 'home/chpasswd'

  get 'home/wrxsnow'

  post 'users/create'

  get 'users/new'

  get 'home/logout'

  post 'home/checkLogin'

  get 'home/login'

  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
