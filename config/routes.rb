Unitimes::Application.routes.draw do
  resources :education_levels
  resources :education_forms
  resources :education_programs do
  	resources :groups
  end	
  get "session/timetable"
  get "session/tests"

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations", :passwords => "passwords"}
  resources :users
end