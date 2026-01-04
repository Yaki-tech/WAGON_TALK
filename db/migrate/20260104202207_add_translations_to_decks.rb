class AddTranslationsToDecks < ActiveRecord::Migration[7.1]
  def change
    add_column :decks, :title_en, :string
    add_column :decks, :description_en, :text
  end
end
