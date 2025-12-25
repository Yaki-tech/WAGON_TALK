class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.text :content, null: false
      t.integer :position, default: 0
      t.references :deck, null: false, foreign_key: true
      t.string :source, default: "manual", null: false
      t.jsonb :ai_metadata

      t.timestamps
    end

    add_index :questions, [:deck_id, :position]
  end
end
