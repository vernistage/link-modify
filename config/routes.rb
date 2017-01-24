Rails.application.routes.draw do

  post '/send_sms' => 'numbers#create'

  resources :links

  get '/:entry' => 'destinations#show'

  root 'links#index'

end
