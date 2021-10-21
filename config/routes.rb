Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # ----Read----
  # Get all task
  get 'tasks', to: 'tasks#index' #suficiente asi
  # Get one task
  get 'tasks/new', to: 'tasks#new', as: :new_task # create

  get 'tasks/:id', to: 'tasks#show', as: :task # read
  # ----Create----
  # Show form
  post 'tasks', to: 'tasks#create'

  #----Update----
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # ----Destroy----
  delete "tasks/:id", to: 'tasks#destroy', as: :delete_task
end
