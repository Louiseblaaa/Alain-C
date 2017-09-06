Rails.application.routes.draw do
  get 'pictures/index'

  get 'pictures/show'

  get 'pictures/new'

  get 'pictures/create'

  get 'pictures/edit'

  get 'pictures/update'

  get 'pictures/destroy'

  get 'themes/index'

  get 'themes/show'

  get 'themes/new'

  get 'themes/create'

  get 'themes/edit'

  get 'themes/update'

  get 'themes/destroy'

  get 'pages/home'

  get 'pages/search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
