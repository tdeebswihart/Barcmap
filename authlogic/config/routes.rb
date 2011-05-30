Barcmap::Application.routes.draw do |map|
  map.resources :users, :user_sessions, :home, :map, :badges, :locations, :authorizations

  #match 'login' => "user_sessions#new",      :as => :login
  #match 'logout' => "user_sessions#destroy", :as => :logout
  map.root :controller => 'home', :action => 'index'
  match 'intro' => 'map#intro'
  match 'about' => 'home#about'
  match 'contact' => 'home#contact'
  map.signup 'signup', :controller => 'users', :action => 'new'
  map.signin 'login', :controller => 'user_sessions', :action => 'new'
  map.signout 'logout', :controller => 'user_sessions', :action => 'destroy'
  map.callback "/auth/:provider/callback", :controller => "authorizations", :action => "create"
  map.failure "/auth/failure", :controller => "authorizations", :action => "failure"


  #match 'profile/:id' => 'users#show/:id'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

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

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
   map.connect ':controller/:action/:id'
   map.connect ':controller/:action/:id.:format'
end