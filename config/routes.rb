Rails.application.routes.draw do
# root 'sessions#new'
  get 'likes/new'

  get 'secrets/new'


  get 'sessions/new' => 'sessions#new'

  get 'secrets' => 'secrets#index'

  get 'users/new'
  get 'users/:user_id' => 'users#show'
  get 'users/:user_id/secrets' => 'users#show'

  post 'sessions/create' => 'sessions#create'
  post 'users/create' => 'users#create'
  post 'users/:user_id/secrets' => 'secrets#create'

  post 'users/:user_id/secrets/:secret_id/likes' => 'likes#create'

  delete 'sessions/:id' => "sessions#destroy"
  delete 'likes/:like_id' => 'likes#destroy'
  delete 'secrets/:secret_id' => 'secrets#destroy'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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
