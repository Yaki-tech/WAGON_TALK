class CreateDecks < ActiveRecord::Migration[7.1]
  def change
    create_table :decks do |t|
      t.string :title, null: false
      t.text :description
      t.string :source, default: "manual", null: false

      t.timestamps
    end

    add_index :decks, :source
  end
end
