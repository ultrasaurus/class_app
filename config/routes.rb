ClassApp::Application.routes.draw do
	get "people" => "people#index"  
	post "people" => "people#create"  
end
