Rails.application.routes.draw do
 devise_for :users, :controllers => { registrations: 'registrations' } 
 root 'welcome#home'
 get '/dash_board', to:'welcome#dash_board'

 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
