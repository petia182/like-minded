Rails.application.routes.draw do

  resources :surveys, except: [:index] do
   resources :questions, only: [:index]
   resources :survey_questions, only: [:destroy]
  end
  resources :questions
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:edit, :update]

  root to: 'surveys#new'
  get '/dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
