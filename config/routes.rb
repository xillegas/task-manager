Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # ----Read----
  # Get all task
  get 'tasks', to: 'tasks#index', as: :tasks
  # Get one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # ----Create----
  # Show form
  get 'tasks/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create'

  #----Update----
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'restaurant#update'

  # ----destroy----
  delete 'tasks/:id', to: 'tasks#destroy'
end
