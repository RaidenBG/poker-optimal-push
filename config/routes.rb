Rails.application.routes.draw do
  
  get 'bb_push/index'
  get 'hu_bb_push/index'
  get 'hu_bb_call/index'
  
  get "demotest" => "test2#demotest"
  get "calculations" => "test2#calculations"
  
  get "positions_test" => "test2#positions"
  
  get "positions" => "positions#index"
  get "positions/new" => "positions#new"
  post "positions" => "positions#create"
  get "positions/edit/:id" => "positions#edit"
  post "positions/updateHand/:id" => "positions#update"
  post "positions/delete/:id" => "positions#delete"
  
  get "blinds" => "blinds#index"
  get "blinds/new" => "blinds#new"
  post "blinds" => "blinds#create"
  get "blinds/edit/:id" => "blinds#edit"
  post "blinds/update/:id" => "blinds#update"
  post "blinds/delete/:id" => "blinds#delete"
  
  get "hands" => "hands#index"
  get "hands/new" => "hands#new"
  post "hands" => "hands#create"
  get "hands/edit/:id" => "hands#edit"
  post "hands/update/:id" => "hands#update"
  post "hands/delete/:id" => "hands#delete"
  
  get "hu_push_hands" => "hu_push_hands#index"
  get "hu_push_hands/new" => "hu_push_hands#new"
  post "hu_push_hands" => "hu_push_hands#create"
  get "hu_push_hands/edit/:id" => "hu_push_hands#edit"
  post "hu_push_hands/update/:id" => "hu_push_hands#update"
  post "hu_push_hands/delete/:id" => "hu_push_hands#delete"
  
  get "hu_call_hands" => "hu_call_hands#index"
  get "hu_call_hands/new" => "hu_call_hands#new"
  post "hu_call_hands" => "hu_call_hands#create"
  get "hu_call_hands/edit/:id" => "hu_call_hands#edit"
  post "hu_call_hands/update/:id" => "hu_call_hands#update"
  post "hu_call_hands/delete/:id" => "hu_call_hands#delete"
  
  get "bb_push" => "bb_push#index"
  get "hu_bb_push" => "hu_bb_push#index"
  
  root 'bb_push#index'
  
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
