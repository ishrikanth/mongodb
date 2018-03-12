Rails.application.routes.draw do
  resources :companies
  resources :book_people
  resources :books
  resources :blogs
  resources :profiles
  resources :articles
  resources :people
   get :session, to:'people#index'
    #root to: "people#index"
    root to: "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
