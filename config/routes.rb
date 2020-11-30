Rails.application.routes.draw do

  devise_for :members
  get "workdays/month" => "workdays#month"
  get "workdays/week" => "workdays#week"
  get "workdays/day" => "workdays#day"

end
