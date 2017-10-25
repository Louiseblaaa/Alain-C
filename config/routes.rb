Rails.application.routes.draw do
  get 'albums/index'

  get 'albums/new'

  get 'albums/create'

  get 'albums/edit'

  get 'albums/update'

  get 'albums/destroy'

  resources :themes do
    resources :pictures do
      resources :reviews
    end
    resources :reviews
  end

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#get 'reviews/index'

  #get 'reviews/new'

  #get 'reviews/create'

  #get 'reviews/edit'

  #get 'reviews/update'

  #get 'reviews/destroy'

  #get 'pictures/index'

  #get 'pictures/show'

  #get 'pictures/new'

  #get 'pictures/create'

  #get 'pictures/edit'

  #get 'pictures/update'

  #get 'pictures/destroy'

  #get 'themes/index'

  #get 'themes/show'

  #get 'themes/new'

  #get 'themes/create'

  #get 'themes/edit'

  #get 'themes/update'

  #get 'themes/destroy'

  #get 'pages/home'

  #get 'pages/search'
