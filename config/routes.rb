Rails.application.routes.draw do

  post '/send_sms' => 'numbers#create'

  resources :links

  root 'links#index'

end
