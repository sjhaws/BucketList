Rails.application.routes.draw do
  root "lists#index"

  resources :lists do 
    resources :activities
    resources :destinations
  end

end
