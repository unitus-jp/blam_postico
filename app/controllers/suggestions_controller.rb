class SuggestionsController < ApplicationController
  def list_com
    @game = Game.find(params[:id])
    @suggestions = @game.suggestions
  end

  def list_user
    @suggestions = Suggestion.all
  end

  def create
    Suggestion.create(game_id: params[:game_id], title: params[:title], content: params[:content])
    redirect_to controller: 'users', action: 'show', id: params[:id]
  end
end
