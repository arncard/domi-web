Rails.application.routes.draw do
  root 'commerces#index'
  
	resources :reviews, only: [:edit, :new]

end
