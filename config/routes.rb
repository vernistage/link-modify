Rails.application.routes.draw do

  post '/send_sms' => 'numbers#create'

  resources :links

  get '/*' => 'destination#show'

  root 'links#index'

end
