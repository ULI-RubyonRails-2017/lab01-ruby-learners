Rails.application.routes.draw do
  get 'restaurant/index'
  resources :articles
  root 'restaurant#index'

  get 'Menu', to: 'restaurant#Menu'
  get 'ContactUs' ,to: 'restaurant#ContactUs'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
