class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @games = Game.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.find_or_create_from_auth_hash(request.env['omniauth.auth'])
  # request.env['omniauth.auth']に、OmniAuthによってHashのようにユーザーのデータが格納されている。
    session[:user_id] = user.id
    redirect_to root_path, notice: 'ログインしました'
  end

  def suggest
    @games = Game.all
  end

end
