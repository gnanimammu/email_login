Rails.application.routes.draw do
   resources :users 
	# get "/user/new",  to: "user#new"
	# get "/user/index", to: "user#index"
	# put "/user/update", to: "user#update"
	# get "/user/show", to: "user#show"
	# destroy "/user/destroy", to: "user#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
