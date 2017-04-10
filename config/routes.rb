Rails.application.routes.draw do


  root 'demo#index' #root route to homepage

  resources :subjects do
    member do
      get :delete 
    end
  end

  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/google'

  #default route
  #may go away in future versions of Rails
  # get ':controller(/:action(/:id))'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
