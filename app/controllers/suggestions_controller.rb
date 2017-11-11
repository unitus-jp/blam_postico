class SuggestionsController < ApplicationController
  def list
    binding.pry
    @suggestions = Suggestion.all
  end
end
