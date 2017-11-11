Rails.application.routes.draw do
  root 'home#index'
  get "home/index"

  get "/signout_twitter" => "sessions#destroy"

  # Oauth routes ←api叩くと/auth/twitter/callbackにリダイレクトされます。session生成しています。
  get "/auth/:provider/callback" => "sessions#create"

  scope "users" do
    get 'new', to: 'users#new'
    get ':id' ,to: 'users#list'
    post 'create', to: 'users#create'
  end

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
