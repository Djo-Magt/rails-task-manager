Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/tasks', to: 'tasks#list'

  # creation
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: :task

  # update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  #delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
