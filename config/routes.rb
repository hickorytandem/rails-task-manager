Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# read all tasks
get "tasks", to: "tasks#index"

get "tasks/new", to: "tasks#new" # display the form

# read one task
get "tasks/:id", to: "tasks#show", as: :task

# create a task

post "tasks", to: "tasks#create"
# update a task
get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
patch "tasks/:id", to: "tasks#update"
# delete a task
delete "tasks/:id", to: "tasks#destroy"
end
# but you won't need to write all of this.
# 'resources :tasks' does the same as all of the above

