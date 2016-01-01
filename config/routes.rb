Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.

  root 'static_pages#home'
  get 'team' 		=> 'static_pages#team'
  get 'portfolio' 	=> 'static_pages#portfolio'
  get 'join' 		=> 'team_applications#new'
  post 'join' 		=> 'team_applications#create'
  get 'request'		=> 'proposals#new'
  post 'request' 	=> 'proposals#create'
  get 'contact' 	=> 'messages#new'
  post 'contact' 	=> 'messages#create'

  get 'users/new'
  get 'signup' => 'users#new'
  get 'login'  => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
  resources :proposals, only: [:index, :show, :destroy]
  resources :messages, only: [:index, :show, :destroy]
  resources :team_applications, only: [:index, :show, :destroy]

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
