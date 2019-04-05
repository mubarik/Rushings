Rails.application.routes.draw do
  root to: 'rushings#index'	
  resources :rushings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
