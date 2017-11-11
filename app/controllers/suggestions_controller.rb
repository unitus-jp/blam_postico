class SuggestionsController < ApplicationController
  def list
    @game = Game.find(params[:id])
    @suggestions = @game.suggestions
  end
end
