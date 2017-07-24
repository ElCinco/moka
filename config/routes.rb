Rails.application.routes.draw do
  get 'home/:id', to: 'home#show', as: 'home'
  get '/faqs', to: 'home#faqs'
  get '/about', to: 'home#about'
  get '/', to: 'home#index'



  resources :customers do
  end

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
