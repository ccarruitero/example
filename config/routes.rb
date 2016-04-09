Rails.application.routes.draw do
  resources :messages, only: [:new, :create]

  root to: 'messages#new'
end
