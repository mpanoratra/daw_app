HoursApp::Application.routes.draw do
  resources :subcontractors
  resources :tasks
  resources :employees
  resources :users, only: [:index]
  resources :projects_users, only: [:destroy]
  resources :employees_projects, only: [:destroy]

  resources :projects 
  get 'projects/:id/add_user_to_project', to: 'projects#add_user_to_project', as: 'add_user_to_project'
  post 'projects/:id/save_user_project', to: 'projects#save_user_project', as: 'save_user_project'
  get 'projects/:id/add_employee_to_project', to: 'projects#add_employee_to_project', as: 'add_employee_to_project'
  post 'projects/:id/save_employee_project', to: 'projects#save_employee_project', as: 'save_employee_project'
  get 'projects/:id/get_units', to: 'projects#get_units', as: 'get_project_units'

  resources :units
  get 'units/:id/get_tasks', to: 'units#get_tasks', as: 'get_unit_tasks'

  resources :labors
  get 'report_labor/select', to: 'labors#select_employees_for_report', as: 'select_employees_for_labor_report'
  post 'report_labor/report_hours', to: 'labors#report_labor', as: 'report_labor'

  get "welcome/home"
  get '/hours_report/select', to: 'welcome#select_dates_for_hours'
  post '/hours_report/show', to: 'welcome#get_employee_hours_for_dates'

  root 'welcome#home'


  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
