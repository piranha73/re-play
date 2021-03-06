Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/typeformfetch' ,to: 'tournaments#type_form_fetch', as: "type_form_fetch"
  resources :tournaments do
    post '/generate_calendar', to: 'tournaments#generate_calendar'
    get '/share', to: 'tournaments#share'
    resources :bookings, only: [ :index, :show, :new, :create, :destroy ]
    patch '/games/:id/start', to: 'games#start', as: 'game_start'
    patch '/games/:id/finish', to: 'games#finish', as: 'game_finish'
    resources :games, only: [:show] do
      resources :statistics, only: [:create, :destroy]
    end
  end

  resources :teams
  get '/account', to: 'pages#account'
  get 'more', to:'pages#more'
end
