Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'queries#index'

  get 'count' =>'queries#query'


end
