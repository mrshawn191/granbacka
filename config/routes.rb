Rails.application.routes.draw do
  get 'startsida/index'


  root 'startsida#index'


get 'startsida/pricing'
  match '/pricing', to: 'startsida#pricing', via: 'get'


end
