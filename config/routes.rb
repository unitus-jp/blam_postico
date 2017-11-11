Rails.application.routes.draw do
  ##ユーザー用ページ
  root 'static_pages#top'
  get '/suggestion', to:'static_pages#suggestion'
end
