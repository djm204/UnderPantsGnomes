UnderPantsGnomes::Application.routes.draw do

  resources :contacts

  resources :abouts
  
  post 'cart/cart', to: 'cart#cart', as: 'cart'
  get  'cart/cart', to: 'cart#index', as: 'cart_index'
  get  'cart/remove', to: 'cart#remove_from_cart', as: 'remove_item'
  post  'cart/remove', to: 'cart#remove_from_cart', as: 'remove_item1'
  get  'cart/logout', to: 'cart#logout', as: 'cart_logout'


  get "home/index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :orders

  resources :customers   

  resources :provinces

  resources :line_items

  resources :categories

  resources :products 
 
   
    

  
  
  get 'search' => 'home#search', as: 'search'
  get 'search_results' => 'home#search_results', as: 'search_results'
  
  
  #get "/products", to: "products#index", as: "products"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
