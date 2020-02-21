Rails.application.routes.draw do
  # get 'departments/index'
  # get 'departments/show'
  # get 'departments/new'
  # get 'departments/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :departments do
    resources :items
  end

  resources :items do
    resources :comments
  end
  root 'departments#index'
end
