Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  get 'tweets' => 'tweets#index'
  get 'tweets/new' => 'tweets#new'
  get 'tweets/hard' => 'tweets#hard'
  get 'tweets/soft' => 'tweets#soft'
  get 'tweets/sweet' => 'tweets#sweet'
  get 'tweets/gohan' => 'tweets#gohan'
  post 'tweets' => 'tweets#create'
  get 'tweets/:id' => 'tweets#show',as: 'tweet'

  patch 'tweets/:id' => 'tweets#update'
  delete 'tweets/:id' => 'tweets#destroy'
  get 'tweets/:id/edit' => 'tweets#edit', as:'edit_tweet'

  root 'hello#index'

end
