class SessionsController < ApplicationController
  ## session生成 ##
  def create
    ## URLがtwitterからのリダイレクトURLの場合、sessionにアクセストークンを格納する。 ##
    ## ↑これセキュリティー上ダメかな。笑 ##
    binding.pry
    if (request.path_info == "/auth/twitter/callback")
      auth = request.env["omniauth.auth"]
      session[:oauth_token] = auth.credentials.token
      session[:oauth_token_secret] = auth.credentials.secret
      session[:username] = auth.extra.access_token.params[:screen_name]
      redirect_to "/tweet", :notice => "サインイン！"
    else
      redirect_to root_url
    end
  end

  ## sesion破棄 ##
  def destroy
    session[:oauth_token] = nil
    session[:oauth_token_secret] = nil
    redirect_to root_url, :notice => "サインアウト！"
    if (request.path_info == "/signout_twitter")
      session[:username] = nil
    end
  end

end
