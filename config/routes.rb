Rails.application.routes.draw do
  devise_for :users
  resources :friends
  get 'home/index' #chạy khi localhost với đường dẫn 172.0.1:3000/home/index
  get 'home/about'

  root 'friends#index' 
  # root 'home#index'#chạy ngay khi vào localhost không có đường dẫn =>127.0.1:3000
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
