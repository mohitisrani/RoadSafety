Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'users#sign_in'
  scope :users do
    get "/sign_up" => "users#sign_up", as: "sign_up_user"
    get "sign_in" => "users#sign_in", as: "sign_in_user"
    post "/create" => "users#create", as: "create_user_session"
    post "/sign_in" => "users#create_session"
    post "/sign_out" => "users#sign_out", as: "destroy_user_session"
  end

  get 'q1' => 'queries#query1'
  get 'q2' =>'queries#query2'
  get 'q3' =>'queries#query3'
  get 'q4' =>'queries#query4'
  get 'q5' =>'queries#query5'
  get 'chart' =>'queries#chart'
  get 'dashboard' => 'queries#index', as: "dashboard"


end
