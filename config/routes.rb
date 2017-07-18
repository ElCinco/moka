Rails.application.routes.draw do
  get '/faqs', to: 'home#faqs'
  get '/about', to: 'home#about'
  get '/', to: 'home#index'

  resources :customers, only: [:create, :update, :show]
  get '/continue', to: 'customers#continue_to_form_2'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
