MySite::Application.routes.draw do

  devise_for :users
  postmarkdown :as => :blog, :permalink_format => :slug
  resources :portfolios
  resources :contacts, only: [:new, :create]
  
  root :to => 'static_pages#home'

  %w[home about blog].each do |page|
    get page, controller:'static_pages', action: page
  end

  %w[portfolio].each do |page|
    get page, controller: 'portfolios', action: page
  end

  # This is a redirect for users if they reach a route that doesn't exist anymore or is not accesible
  # get '*path'=> redirect('/')
end
