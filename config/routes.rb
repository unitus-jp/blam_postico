Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  get 'home/show'

  scope "users" do
    get 'new', to: 'users#new'
    post 'create', to: 'users#create'
    get ':id' ,to: 'users#show'
    get ':id/suggest' ,to: 'users#suggest'
    post ':id/suggest', to: 'suggestions#create'


  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: "home#index"

 scope "company" do
   get 'new', to: 'companies#new'
   get 'list', to: 'companies#list'
   post 'create', to: 'companies#create'

   scope "game" do
     get 'new', to: 'games#new'
     post 'create', to: 'games#create'

     scope ":id/suggestion" do
       get 'list', to:'suggestions#list'
     end
   end
 end

end
