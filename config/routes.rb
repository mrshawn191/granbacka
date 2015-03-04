Rails.application.routes.draw do
  get 'startsida/index'


  root 'startsida#index'

  resources :sessions,      only: [:new, :create, :destroy]



get 'startsida/login'
	  match '/login', to: 'startsida#login', via: 'get'


get 'startsida/pricing'
  match '/pricing', to: 'startsida#pricing', via: 'get'


get 'startsida/schema'
  match '/schema', to: 'startsida#schema', via: 'get'


get 'startsida/bokning'
  match '/bokning' => redirect('http://kund.pastell16.pastelldata.se/UnitRedirect.aspx?UNIT=1564'), via: 'get'


get 'startsida/massage'
  match '/massage', to: 'startsida#massage', via: 'get'


get 'startsida/ovrigt'
  match '/ovrigt', to: 'startsida#ovrigt', via: 'get'


get 'startsida/pass'
  match '/pass', to: 'startsida#pass', via: 'get'


get 'startsida/gym'
  match '/gym', to: 'startsida#gym', via: 'get'


end
