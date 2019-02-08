Rails.application.routes.draw do
	devise_for :administrators
	devise_for :users
	mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	resources :blogs, only: [:index, :show]
	resources :contacts, only: [:new, :create]

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get "/metodo" => "pages#metodo", as: "metodo"
	get "/acerca" => "pages#acerca", as: "acerca"
	get "/precio" => "pages#precio", as: "precios"
	get "/programa_intensivo" => "pages#programa_intensivo", as: "programa_intensivo"
	get "/programa_fastclass" => "pages#programa_fastclass", as: "programa_fastclass"
	get "/programa_multidisciplinar" => "pages#programa_multidisciplinar", as: "programa_multidisciplinar"
	get "/acompanamiento_tareas" => "pages#acompanamiento_tareas", as: "acompanamiento_tareas"
	get "/faq" => "pages#faq", as: "faq"
	get "pages/download_pdf"
	root to: "pages#home"

end
