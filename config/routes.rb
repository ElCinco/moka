Rails.application.routes.draw do
  get '/faqs', to: 'home#faqs'
  get '/about', to: 'home#about'
  get '/submit_contact_form', to: 'home#submit_contact_form'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
