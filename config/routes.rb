Rails.application.routes.draw do
  # get 'articles/index'

  # get 'articles/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
  root to: 'articles#index'
end
