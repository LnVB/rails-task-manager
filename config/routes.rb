Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Read all = list all the tasks
  get '/tasks', to: 'tasks#index'

  # create
  # 1. Provide the form
  get '/tasks/new', to: 'tasks#new', as: :new_task
  # 2. Send the form
  post '/tasks', to: 'tasks#create'

  # update
  # 1. Provide the form
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # 2. Send the form
  patch '/tasks/:id', to: 'tasks#update'

  # delete
  delete '/tasks/:id', to: 'tasks#destroy'

  # read one = display one task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Defines the root path route ("/")
  # root "articles#index"
end
