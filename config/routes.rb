Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts
  # this rewrites the url of contacts#new to be /contact-us
  get 'contact-us', to: 'contacts#new'
end
