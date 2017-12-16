Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get 	'login'	=> 'sessions#new'
	post 	'login'	=> 'sessions#create'
	delete 'logout'	=> 'sessions#destroy' 

end
