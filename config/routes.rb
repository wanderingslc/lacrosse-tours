LacrosseTours::Application.routes.draw do

  devise_for :users, :skip => [:registrations]

  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  resources :itineraries
  resources :tour_dates
  # match 'sign_up' => 'sign_up#new', :as => 'sign_up', :via => :get
  # match 'sign_up' => 'sign_up#create', :as => 'sign_up', :via => :post
  root :to => 'static_pages#home'
  get "path", to: 'controller#action', as: :name_of_path
  #get "static_pages/home"

  get "bus", to:"static_pages#bus", as: :bus

  #get "itinerary", to:"itineraries#index ", as: :itinerary

  get "tour", to: "static_pages#tour", as: :tour

  get "pricing", to: "static_pages#pricing", as: :pricing

  get "stadium", to: "static_pages#stadium", as: :stadium

  get "about", to: "static_pages#about", as: :about

  get "contact", to: "static_pages#contact", as: :contact

  get "sign_up", to: "static_pages#sign_up", as: :sign_up

  get "googlee78ed3070a14e045", to: "static_pages#googlee78ed3070a14e045", as: :googlee78ed3070a14e045

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
