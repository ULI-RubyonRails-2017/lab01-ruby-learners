Rails.application.routes.draw do

  root 'statics#index'  
  get 'Menu', to: 'statics#Menu'
  get 'ContactUs' ,to: 'statics#ContactUs'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
