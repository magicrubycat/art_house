Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  get 'about', to: 'pages#about', as: :about
  get 'bids/:id/accept', to: 'bids#accept', as: :accept_bid
  get 'bids/:id/reject', to: 'bids#reject', as: :reject_bid


  resources :artifacts do
    resources :bids, only: [:new, :create]
  end

  resources :bids, only: [:destroy]
end
