Rails.application.routes.draw do
  get 'static_pages/home'
  get "/search" => "static_pages#search"
  get "/addconzone" => "static_pages#addconzone"
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
