Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'queries#index' 

  get 'q1' => 'queries#query1'
  get 'q2' =>'queries#query2'
  get 'q3' =>'queries#query3'
  get 'q4' =>'queries#query4'
  get 'q5' =>'queries#query5'


end
