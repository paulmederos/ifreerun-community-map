Ifreerun::Application.routes.draw do

  resources :locations

  get 'signup',   to: 'users#new', as: 'signup'
  get 'login',    to: 'sessions#new', as: 'login'
  get 'logout',   to: 'sessions#destroy', as: 'logout'
  
  resources :users
  resources :sessions
  resources :password_resets
  resources :communities

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'pages#home'
  
  match '/conditioning' => 'pages#conditioning'
  match '/map' => 'pages#map'
 
  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
