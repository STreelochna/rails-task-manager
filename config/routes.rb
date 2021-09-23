Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #list of all the list of tasks 
  get 'tasks', to: 'tasks#index'
  
  # As a user, I can add a new task 
  # One route is there to display the Task form, and 
  get "tasks/new", to: "tasks#new"
  #another one is there to handle the POST request generated when submitting this form.
  post "tasks", to: "tasks#create"
  
  #view the details of a task: localhost/3000/tasks/1
  get "tasks/:id", to: "tasks#show", as: :task
  # As a user, I can edit a task
  # GET the HTML form (pre-filled with restaurant attributes) for editing = 1 request
  get "tasks/:id/edit", to: "tasks#edit", as: :task_edit
  # PATCH the parameters to update an existing restaurant = 1 request
  patch "tasks/:id", to: "tasks#update"
 
  delete "tasks/:id", to: "tasks#destroy"

end
