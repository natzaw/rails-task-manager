Rails.application.routes.draw do
  # Original: get 'index', to: 'tasks#index'
  # # For Action: Read (all)
  root to: 'tasks#index'

  get 'tasks', to: 'tasks#index'

  # Original: get 'show', to: 'tasks#show'
  #  For Action: Read (one)
  get 'tasks/:id', to: 'tasks#show'

  # Original: get 'new', to: 'tasks#new'
  # For Action: Create - Step 1: GET the form  
  get 'tasks/new', to: 'tasks#new'

  # Original: get 'create', to: 'tasks#create'
  # For Action: Create - Step 2: POST the form 
  post 'tasks/new', to: 'tasks#create'

  # Original: get 'edit', to: 'tasks#edit'
  # For Action: Update - Step 1: GET the form 
  get 'tasks/:id/edit', to: 'tasks#edit'

  # Original: get 'update', to: 'tasks#update'
  # For Action: Update - Step 2: PATCH the form 
  patch 'tasks/:id', to: 'tasks#update'


  # Original: get 'destroy', to: 'tasks#destroy'
  # For Action: Delete 
  delete 'tasks/:id', to: 'tasks#destroy'


 

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
