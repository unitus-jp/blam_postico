class SuggestionsController < ApplicationController
  def list
    @game = Game.find(params[:id])
    @suggestions = @game.suggestions
  end


  def create
    Suggestion.create(game_id: params[:game_id], title: params[:title], content: params[:content])
  end
end
