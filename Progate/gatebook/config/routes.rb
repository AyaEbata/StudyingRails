Rails.application.routes.draw do

  resources :users
  root 'home#top'
  get 'about' => 'home#about'
  get 'notes/new'
  post 'notes/create' => 'notes#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
