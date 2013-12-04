Unitimes::Application.routes.draw do
  resources :groups

  get "session/list"
  get "session/groups"
  get "session/tests"
  get "session/timetable"
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations", :passwords => "passwords"}
  resources :users
end