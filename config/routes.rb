Rails.application.routes.draw do
  root 'home#index'
  get "home/index"

  get "/signout_twitter" => "sessions#destroy"

  # Oauth routes ←api叩くと/auth/twitter/callbackにリダイレクトされます。session生成しています。
  get "/auth/:provider/callback" => "sessions#create"

  scope "users" do
    get 'suggestion', to: 'suggestions#list_user'
    get 'new', to: 'users#new'  #ユーザー登録
    post 'create', to: 'users#create'  #ユーザー情報送信
    get ':id' ,to: 'users#show'  # マイページ
    get ':id/suggest' ,to: 'users#suggest'  #提案ページ
    post ':id/suggest', to: 'suggestions#create'  #提案送信
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: "home#index" #TOPページ

 scope "company" do
   get 'new', to: 'companies#new' #会社登録
   get 'list', to: 'companies#list' #会社一覧
   post 'create', to: 'companies#create' #会社登録送信

   scope "game" do
     get 'new', to: 'games#new' #ゲーム登録
     post 'create', to: 'games#create' #ゲーム登録送信

     scope ":id/suggestion" do
       get 'list', to:'suggestions#list_com' #提案一覧
     end
   end
 end

end
