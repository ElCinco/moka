Rails.application.routes.draw do
  get '/faqs', to: 'home#faqs'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
