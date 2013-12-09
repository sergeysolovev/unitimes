Unitimes::Application.routes.draw do
  get "session/timetable"
  resources :education_programs

  resources :groups

  get "session/tests"
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations", :passwords => "passwords"}
  resources :users
end