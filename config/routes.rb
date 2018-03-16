# == Route Map
#
#    Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         books#index
#     books GET    /books(.:format)          books#index
#           POST   /books(.:format)          books#create
#  new_book GET    /books/new(.:format)      books#new
# edit_book GET    /books/:id/edit(.:format) books#edit
#      book GET    /books/:id(.:format)      books#show
#           PATCH  /books/:id(.:format)      books#update
#           PUT    /books/:id(.:format)      books#update
#           DELETE /books/:id(.:format)      books#destroy
# 

Rails.application.routes.draw do
  devise_for :users
	root "books#index"
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
