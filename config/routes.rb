Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :hello, only: %i/index show/
  resources :anime, only: %i/index/
end
