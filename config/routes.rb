Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index"

  # Create
  get "tasks/new", to: "tasks#new"

  # Read (one)
  get "tasks/:id", to: "tasks#show", as: :task

  # Create task
  post "tasks", to: "tasks#create"

  # Edit task (get form)
  get "tasks/:id/edit", to: "tasks#edit", as: :edit

  # Patch task
  patch "tasks/:id", to: "tasks#update"

  # Delete tasks
  delete "tasks/:id", to: "tasks#destroy"

end
