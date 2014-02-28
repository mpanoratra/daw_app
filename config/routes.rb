HoursApp::Application.routes.draw do
  resources :units
  resources :subcontractors
  resources :tasks
  resources :labors
  resources :employees
  resources :users, only: [:index]
  resources :projects_users, only: [:destroy]

  resources :projects 
  get 'projects/:id/add_user_to_project', to: 'projects#add_user_to_project', as: 'add_user_to_project'
  post 'projects/:id/save_user_project', to: 'projects#save_user_project', as: 'save_user_project'
  get 'projects/:id/get_units', to: 'projects#get_units'

  get 'units/:id/get_tasks', to: 'units#get_tasks'


  get '/hours_report/select', to: 'welcome#select_dates_for_hours'
  post '/hours_report/show', to: 'welcome#get_employee_hours_for_dates'
  #get '/hours_report/select', to: 'welcome#select_dates_for_hours'

  get "welcome/home"
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
