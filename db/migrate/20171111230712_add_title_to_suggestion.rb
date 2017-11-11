class AddTitleToSuggestion < ActiveRecord::Migration[5.1]
  def change
    add_column :suggestions, :title, :string
  end
end
