class SuggestionsController < ApplicationController
  protect_from_forgery except: :create  #CSRF対策対策（よくわからない）
  def list
    @game = Game.find(params[:id])
    @suggestions = @game.suggestions
  end


  def create
    Suggestion.create(game_id: params[:game_id], title: params[:title], content: params[:content], user_id: params[:id])
    redirect_to controller: 'users', action: 'show', id: params[:id]
  end
end
