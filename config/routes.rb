Rails.application.routes.draw do
  # Wrap all routes with locale scope
  scope "(:locale)", locale: /en|fr/ do
    root to: 'pages#home'

    # Other GET routes
    get 'pages/home', to: 'pages#home'
    get 'services', to: 'pages#services'
    get 'portfolio', to: 'pages#portfolio'

    # Rename consultation page to 'join_us' (GET request to render the form)
    get 'join', to: 'pages#join_us', as: :join_us

    # POST route for submitting the consultation form
    resources :consultations, only: [:new, :create]

    # Additional route for the thank you page
    get 'thank_you', to: 'consultations#thank_you'
  end
end
