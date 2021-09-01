Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  # this generates only the create routes from the 7 default routes provided by rails
  resources :contacts, only: [:create]
  # this has "/contact-us" point to the contacts#new route. The route pathname is also updated to new_contact
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
