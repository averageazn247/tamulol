Tamulol::Application.routes.draw do


    namespace :mercury do
      resources :images
    end

  mount Mercury::Engine => '/'

  resources :raids

  resources :events do
    member { put :mercury_update }
    end
   resources :officers do
    member { put :mercury_update }
    
  end
  resources :posts do
    member { put :mercury_update }
    
    
  end
  resources :twitch do
  member {put :mercury_update}
end
resources :streams do
  member {put :mercury_update}
end
resources :lists
match "/lol", :to=>"player#setlol"
match "/fps", :to=>"player#setfps"
match "/sc2", :to=>"player#setsc2"
match '/reset', :to=> 'player#reset'
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
resources :ranks
resources :sessions, only: [:new, :create, :destroy]
resources :password_resets
  resources :users 
  resources :reports
  resources :micropost
    resources :team_steps 
    resources :messages  
    resources :message
    resources :galleries
    resource :picturies
    
    match '/streamnew', to: 'streams#new' 
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
match '/messages', to: 'messages#index'
match '/playerlist',to: 'player#list' 
match '/tusla2013', to: 'player#tusla'
match '/talumar', to: 'page#talumar'
match '/sendmessage', to: 'messages#new'
match '/contact', to: 'page#contact' 
match '/about',to: 'player#about'
match '/officers' , to: 'player#officers'
match '/tos', to: 'page#tos'
match '/post', to: 'microposts#new'
match '/reportnew' , to: 'reports#new'
match '/showreport', to: 'reports#show'
match '/editreport' , to: 'reports#edit'
match '/allreport' , to: 'reports#index' 
match '/teams/:id/editbio', to: 'teams#editbio'
match '/shirt', to: 'player#shirt'
get   '/login', :to => 'sessions#new', :as => :login
match '/auth/:provider/callback', :to => 'sessions#create'
match '/auth/failure', :to => 'sessions#failure'
match '/gamerep', :to => 'tourn#gamerepublik' 
match '/tulsa2013' , to: 'player#tulsa'
match '/rules', to: 'player#rules'
match '/oldstreams', to: 'player#stream'
match '/raid' , to: 'player#raid'
match '/rankings' , to: 'player#ranking'
match '/rank/:id', to: 'ranks#show'
match '/stream/new', to: 'streams#new'
match '/ranknew', to: 'ranks#new'
match '/rankedit/:id', to: 'ranks#edit'
match '/newevent', to: 'events#new'
match '/tloviro' , to: 'player#tloviro'
match '/octfest' , to: 'tourn#octfest'
match '/emily' , to: 'player#emily'
match '/near1337' ,to: 'player#near1337'
match '/worldsfinals', to: 'page#worldfinal'
match '/players/new' , to: 'players#new'


match '/off/new' , to: 'officers#new'
match '/off/list', to: 'officers#list'

#match '/team_steps/:id/:team_id' , to: 'team_steps#update'
#match '/team_steps/:id/:team_id' , to: 'team_steps#update'
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
