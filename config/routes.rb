Rails.application.routes.draw do
  root 'commerces#index'
  
	resources :commerces, only: [:index, :show]
	resources :reviews, only: [:edit, :new]

end
