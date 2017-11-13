Rails.application.routes.draw do
  resources :expertise_professors
  resources :expertises
  resources :professors

  root to: "professors#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
