Rails.application.routes.draw do
  get 'cocktails', to: 'cocktails#index'
  get 'cocktails/new', to: 'cocktails#new'
  get 'cocktails/:id', to: 'cocktails#show', as: 'cocktail'
  post 'cocktails', to: 'cocktails#create'
end
