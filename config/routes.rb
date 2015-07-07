Rails.application.routes.draw do



 post   'login'   => 'sessions#create'
 get 'logout'  => 'sessions#destroy'

get "sessions/destroy"

root 'startsida#index'

get 'startsida/register'
  match '/register', to: 'users#new', via: 'get'

get 'startsida/login'
	match '/login', to: 'sessions#new', via: 'get'



get 'startsida/pricing'
  match '/pricing', to: 'startsida#pricing', via: 'get'


get 'events/index'
  match '/schema', to: 'events#index', via: 'get'

get 'events/new'
  match '/new', to: 'events#new', via: 'get'


match 'events/:id/edit' => 'events#edit', via: [:get, :post]


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


  resources :events

  resources :users

  resources :articles


end
