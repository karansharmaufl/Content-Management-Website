Rails.application.routes.draw do
  get 'sections/index'

  root 'demo#index'

  resources :subjects do
  	member do
  		get:delete
  	end
  end

  resources :pages do
    member do
      get:delete
    end
  end

  resources :sections do
    member do
      get:delete
    end
  end


  get 'demo/index'
  get 'demo/hello'
  get 'test/demotest'
  get 'demo/other_hello'
  get 'demo/google'



 #default route
 #get ':controller(/:action(/:id))'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
