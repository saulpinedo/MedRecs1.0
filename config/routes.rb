Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :patients
    resources :diagnoses
    resources :doctors
    resources :static_pages
    
    root 'static_pages#index'
end
