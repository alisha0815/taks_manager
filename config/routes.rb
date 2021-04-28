Rails.application.routes.draw do
# Read all the tasks
  get '/tasks', to:'tasks#index'
# Create a task
  get '/tasks/new', to:'tasks#new' # display the form
  post '/tasks', to:'tasks#create'
# Read one task
  get '/tasks/:id', to:'tasks#show', as: :task
# Update a task
  get '/tasks/:id/edit', to:'tasks#edit', as: :edit
  patch '/tasks/:id', to:'tasks#update'
# Delete a task
  delete '/tasks/:id', to:'tasks#destroy'
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
