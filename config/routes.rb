Rails.application.routes.draw do
	get 'todolists/new' => "todolists#new", as:"lists"
 	get 'top' => 'homes#top'

  	post 'todolists/new' => 'todolists#create',as:"todolists"

  	get 'todolists' => 'todolists#index'

  	get 'todolists/:id' => 'todolists#show', as:'todolist'

  	get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
	patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'

end
