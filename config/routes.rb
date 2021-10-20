Rails.application.routes.draw do
  get '/tasks', to: 'tasks#index' # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #create
  get 'task/new', to: 'tasks#new', as: 'new_task'
  post 'tasks', to: 'tasks#create'
  #show
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  #update
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'
  #destroy
  delete 'tasks/:id', to: 'tasks#destroy'

  root to: 'tasks#index'
end
