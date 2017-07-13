Rails.application.routes.draw do
  get '/faqs', to: 'home#faqs'
  get '/about', to: 'home#about'

  resources :customers, only: [:create]

  get '/submit_contact_form', to: 'home#submit_contact_form'
  get '/submit_quote_form', to: 'home#submit_quote_form'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
