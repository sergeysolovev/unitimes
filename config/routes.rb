Unitimes::Application.routes.draw do
  get "session/list"
  get "session/groups"
  get "session/tests"
  get "session/timetable"
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end