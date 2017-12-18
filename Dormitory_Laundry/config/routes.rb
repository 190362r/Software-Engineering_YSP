# coding: utf-8
Rails.application.routes.draw do
	#get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'sessions#new'
  #ログイン
	#get 	'login'	=> 'sessions#new'
	#post	'login'	=> 'sessions#create'
	#delete 'logout'	=> 'sessions#destroy'

	resources :sessions
	get 'kanrisinki', to: 'sessions#kanrisinki'
	get 'naiyoukakunin.html.erb', to: 'sessions#naiyoukakunin'
	get 'kanri_itiranhensyu.html.erb', to: 'sessions#kanri_itiranhensyu'
	get 'kanri_hensyu.html.erb', to: 'sessions#kanri_hensyu'
	
end
