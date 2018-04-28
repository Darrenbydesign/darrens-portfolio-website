MySite::Application.routes.draw do

  get 'projects/index'

  get 'projects/show'

  devise_for :users
  resources :portfolios
  resources :contacts, only: [:new, :create]
  
  root :to => 'static_pages#home'

  %w[home about].each do |page|
    get page, controller:'static_pages', action: page
  end

  %w[portfolio].each do |page|
    get page, controller: 'portfolios', action: page
  end

  # This is a redirect for users if they reach a route that doesn't exist anymore or is not accesible
  # get '*path'=> redirect('/')
end
