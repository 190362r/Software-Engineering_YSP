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
	get 'itiran_hit.html.erb',to: 'sessions#itiran_hit'
       get 'loss_search.html.erb',to: 'sessions#loss_search'
       get 'search_hit.html.erb',to: 'sessions#search_hit'
       get 'search_result.html.erb',to: 'sessions#search_result'
      get 'itiran_result.html.erb',to: 'sessions#itiran_result'
end
