Rails.application.routes.draw do
  get '/about', to: 'static#about', as: :about
  root 'static#home'
  resources :posts
end
