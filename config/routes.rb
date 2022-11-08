Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Read all = list all the tasks
  get '/tasks', to: 'tasks#index'
  # read one = display one task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Defines the root path route ("/")
  # root "articles#index"
end
