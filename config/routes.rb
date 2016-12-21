Rails.application.routes.draw do
 devise_for :users, :controllers => { registrations: 'registrations' } 
 root 'welcome#home'
 get '/dash_board', to:'welcome#dash_board', :as => :dash_board

 get '/upload_image', to: 'welcome#upload_image'
 post '/save_image', to: 'welcome#save_image', :as => :save_image
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
