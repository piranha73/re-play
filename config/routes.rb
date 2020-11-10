Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/typeformfetch' ,to: 'tournaments#type_form_fetch', as: "type_form_fetch"
  resources :tournaments do
    post '/generate_calendar', to: 'tournaments#generate_calendar'
    resources :bookings, only: [ :index, :show, :new, :create, :destroy ]
    resources :games, only: [:show] do
      resources :statistics, only: [:create, :destroy]
    end
  end

  resources :teams
  get '/account', to: 'pages#account'
end
