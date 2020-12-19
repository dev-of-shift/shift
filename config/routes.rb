Rails.application.routes.draw do

  # devise_for :members
  get "workdays/month" => "workdays#month"
  get "workdays/week" => "workdays#week"
  get "workdays/day" => "workdays#day"

  resources :workers, only:[:index, :create, :update, :destroy]
  resources :places, only:[:index, :create, :update, :destroy]
  resources :worklists, only:[:index, :create, :update, :destroy]

end
