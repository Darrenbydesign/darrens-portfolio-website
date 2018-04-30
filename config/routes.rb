MySite::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'projects/index'

  get 'projects/show'

  devise_for :users
  resources :contacts, only: [:new, :create]
  resources :projects
  
  root :to => 'static_pages#home'

  %w[home about].each do |page|
    get page, controller:'static_pages', action: page
  end

  %w[projects].each do |page|
    get page, controller:'projects', action: page
  end
  # This is a redirect for users if they reach a route that doesn't exist anymore or is not accesible
  # get '*path'=> redirect('/')
end
