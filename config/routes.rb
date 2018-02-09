Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :contacts

  resources :customers do 
    get :search, on: :collection
    get :preview, on: :member
    #get :make, on: :member
  end  
end
