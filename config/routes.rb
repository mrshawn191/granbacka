Rails.application.routes.draw do
  get 'startsida/index'


  root 'startsida#index'


get 'startsida/pricing'
  match '/pricing', to: 'startsida#pricing', via: 'get'
get 'startsida/schema'
  match '/schema', to: 'startsida#schema', via: 'get'


end
