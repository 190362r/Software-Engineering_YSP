# coding: utf-8
Rails.application.routes.draw do
  resources :photos
	#get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'sessions#new'
  #ログイン
	#get 	'login'	=> 'sessions#new'
	#post	'login'	=> 'sessions#create'
	#delete 'logout'	=> 'sessions#destroy'

	resources :sessions

	get 'kanrisinki', to: 'photos#new'
	get 'naiyoukakunin.html.erb', to: 'sessions#naiyoukakunin'
	get 'kanri_itiranhensyu.html.erb', to: 'sessions#kanri_itiranhensyu'
	get 'kanri_hensyu.html.erb', to: 'sessions#kanri_hensyu'
	get 'itiran_hit.html.erb',to: 'sessions#itiran_hit'
       get 'loss_search.html.erb',to: 'sessions#loss_search'
       get 'search_hit.html.erb',to: 'sessions#search_hit'
       get 'search_result.html.erb',to: 'sessions#search_result'
       get 'itiran_result.html.erb',to: 'sessions#itiran_result'
	get 'sakujyo_kanryo.html.erb', to: 'sessions#sakujyo_kanryo'
	get 'sinkoku_kanryo.html.erb', to: 'sessions#sinkoku_kanryo'

	get 'gest_use_pages/gest_use_main.html.erb',to:'gest_use_pages#gest_use_main'
	get 'gest_use_wash',to:'gest_use_pages#gest_use_wash'
	get 'gest_use_dry',to:'gest_use_pages#gest_use_dry'
	get 'kanri.html.erb', to:'sessions#kanri'

end
