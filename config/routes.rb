Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  get 'home/about' => 'homes#about' , as: "about"
  resources :users,  only: [:show,:index,:edit,:update]
  resources :books

end