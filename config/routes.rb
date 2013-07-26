Tamulol::Application.routes.draw do
  resources :posts

  get "password_resets/new"
  resources :players
  resources :teams do
    collection do
      put :approve
    end
end
  resources :teams do
  resources :build, controller: 'teams/build'
end 
resources :sessions, only: [:new, :create, :destroy]
resources :password_resets
  resources :users 
  resources :reports
  resources :micropost
    resources :team_steps 
    resources :messages 
match '/signup',  to: 'users#new'
match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
match '/teamnew', to: 'teams#new' 
match '/addplayer/:tid'=> 'player#create', :as => :create
match '/soon', to: 'page#soon'
match '/showteam' ,to: 'teams#show'
match '/listteam', to: 'users#viewteam'
match '/admin' , to: 'admin#main'
match '/off_stream' , to: 'page#stream'
match '/nocx', to: 'page#nocx'
match '/printcapt', to: 'admin#print', defaults: { format: 'xls' }
get '/photos/capt', to: 'admin#print', defaults: { format: 'xls' }
get '/print/match', to: 'admin#match', defaults: { format: 'xls'}
match '/anariil' , to: 'page#anariil'
match '/zehtsu' , to: 'page#zehtsu'
match '/rainbow', to: 'page#rainbow'
match '/epicshots' , to: 'page#epicshots'
match '/jay' , to: 'page#jay'
match '/spring2013', to: 'page#spring2013'

match '/playerlist',to: 'player#list'
match '/talumar', to: 'page#talumar'
match '/sendmessage', to: 'message#new'
match '/contact', to: 'page#contact'
match '/index', to: 'message#index'
match '/about',to: 'player#about'
match '/tos', to: 'page#tos'
match '/post', to: 'microposts#new'
match '/reportnew' , to: 'reports#new'
match '/showreport', to: 'reports#show'
match '/editreport' , to: 'reports#edit'
match '/allreport' , to: 'reports#index'
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
   root :to => 'page#home'
  
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
