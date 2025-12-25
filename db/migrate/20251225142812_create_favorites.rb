class CreateFavorites < ActiveRecord::Migration[7.1]
  def change
    create_table :favorites do |t|
      t.references :question, null: false, foreign_key: true
      t.string :user_identifier, null: false

      t.timestamps
    end

    add_index :favorites, :user_identifier
    add_index :favorites, [:question_id, :user_identifier], unique: true
  end
end
