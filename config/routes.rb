Rails.application.routes.draw do
  get 'contact' => 'contacts#new'
  get 'contacts/create'
  get 'about' => 'about#index'

  namespace :admin do
  get 'login' => "sessions#new", :as => "login"
  end

  namespace :admin do
  get 'sessions/create'
  end

  namespace :admin do
  get 'users/new'
  end

  namespace :admin do
  get 'users/create'
  end

  namespace :admin do
  get 'users/edit'
  end

  namespace :admin do
  get 'users/update'
  end

  namespace :admin do
  get 'users/destroy'
  end

  namespace :admin do
  get 'users/index'
  end

  namespace :admin do
  get 'users/show'
  end

  namespace :admin do
  get 'comments/destroy'
  end

  get 'comments/new'

  namespace :admin do
  get 'categories/new'
  end

  namespace :admin do
  get 'categories/create'
  end

  namespace :admin do
  get 'categories/edit'
  end

  namespace :admin do
  get 'categories/update'
  end

  namespace :admin do
  get 'categories/destroy'
  end

  namespace :admin do
  get 'categories/index'
  end

  namespace :admin do
  get 'categories/show'
  end

  get 'categories/show'

  namespace :admin do
  get 'posts/new'
  end

  namespace :admin do
  get 'posts/create'
  end

  namespace :admin do
  get 'posts/edit'
  end

  namespace :admin do
  get 'posts/update'
  end

  namespace :admin do
  get 'posts/destroy'
  end

  namespace :admin do
  get 'posts/index'
  end

  namespace :admin do
  get 'posts/show'
  end

  get 'posts/index'

  get 'posts/show'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  #Resources For the Front End
  resources :posts, :categories
  resources "contacts", only: [:new, :create]

  #Resources for the Admin
  namespace :admin do
    resources :posts, :categories, :comments, :users, :sessions
  end

  resources :posts do
    resources :comments
  end 


  root 'posts#index'
  
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
