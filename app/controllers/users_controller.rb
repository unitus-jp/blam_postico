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

  def suggest
    @games = Game.all
  end

end
