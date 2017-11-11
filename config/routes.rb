Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  get 'home/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: "home#index"

 scope "company" do
   get 'new', to: 'companies#new'
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
