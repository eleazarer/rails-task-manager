Rails.application.routes.draw do
  resources :tasks

  get 'up' => 'rails/health#show', as: :rails_health_check

  # Redirigir la URL "/task" a la página de índice de tareas ("/tasks")
  get '/task', to: redirect('/tasks')
end
