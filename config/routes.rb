Peoplenetz::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :solutions do
    resources :solution_topics
  end
  resources :libraries do 
    resources :library_topics
  end
  resources :industries do
    resources :industry_topics
  end
  resources :cases
  resources :contacts

  match '/home', :to => 'pages#home'
  match '/specializ', :to => 'pages#specializ'
  match '/industries', :to => 'pages#industries'
  match '/solutions', :to => 'pages#solutions'
  match '/libraries', :to => 'pages#libraries'
  match '/build_case', :to => 'pages#build_case'
  match '/about', :to => 'pages#about'
  match '/why_peoplenetz', :to => 'pages#why_peoplenetz'
  match '/services', :to => 'pages#services'
  match '/sales', :to => 'pages#sales'
  match '/help', :to => 'pages#help'
  match '/careers', :to => 'pages#careers'
  match '/management', :to => 'pages#management_team'
  match '/corporate_responsibility', :to => 'pages#corporate_responsibility'
  match '/partners', :to => 'pages#partners'

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
  root :to => 'pages#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
