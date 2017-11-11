class GamesController < ApplicationController
  def new
    @game = Game.new
  end
  def create
    Game.create(name: params[:name])
  end
end
