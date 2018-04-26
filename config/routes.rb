Rails.application.routes.draw do

  get '/', to: 'static_pages#home'
  post '/', to: 'static_pages#home'
  get '/home', to: 'static_pages#home'

  get '/about', to: 'static_pages#about'

  get '/usercreation', to: 'users#new'
  post '/usercreation/:username', to: 'users#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
