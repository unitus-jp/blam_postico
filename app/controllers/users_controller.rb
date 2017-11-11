class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @games = Game.all
  end

  def new
    @user = User.new
  end

  def create
    User.create(username: params[:name], email: params[:email], password: params[:password])
  end

  def suggestion
  end

  def suggest
    Suggestion.create(game_id: params[:game_id], content: params[:content])
  end

end
