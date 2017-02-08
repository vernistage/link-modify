Rails.application.routes.draw do
  resources :phone_numbers, only: [:new, :create]

  post 'phone_numbers/verify' => "phone_numbers#verify"

  post '/send_sms' => 'numbers#create'

  resources :links

  get '/:entry' => 'destinations#show'

  root 'links#index'

end
