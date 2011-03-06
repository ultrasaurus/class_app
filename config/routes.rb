ClassApp::Application.routes.draw do
	get "people" => "people#index"  
	post "people" => "people#create"  
  get "people/:id" => "people#show", :as => 'person'
  put "people/:id" => "people#update", :as => 'person'
  delete "people/:id" => "people#destroy", :as => 'person'
  get "people/new" => "people#new"
  get "people/:id/edit" => "people#edit"
end
