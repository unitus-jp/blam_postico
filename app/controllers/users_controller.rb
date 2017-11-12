class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @games = Game.all
    @suggestions = @user.suggestions
    binding.pry
  end

  def new
    @user = User.new
  end

  def suggest
    @games = Game.all
  end

end
